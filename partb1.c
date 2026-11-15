////////////////////////////////////////////////////////
////////////////////////////////////////////////////////
////    main.c
////////////////////////////////////////////////////////
////////////////////////////////////////////////////////

#define F_CPU 16000000UL

/*--------------------Libraries---------------------------*/
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>

#include <avr/io.h>
#include <avr/sleep.h>

/* Scheduler include files. */
#include "AVR_FreeRTOS/FreeRTOS.h"
#include "AVR_FreeRTOS/task.h"
#include "AVR_FreeRTOS/queue.h"
#include "AVR_FreeRTOS/semphr.h"

/* system time include file. */
#include "time.h"

/*--------------------Task Setup---------------------------*/

typedef struct {
	uint8_t pin;
	TickType_t onTime;
	TickType_t period;
	const char *name;
} LEDTask;

/* Task timing in ticks (16 ms per tick). */
static LEDTask taskA = {PB0, 9, 47, "A"};
static LEDTask taskB = {PB1, 19, 75, "B"};
static LEDTask taskC = {PB2, 88, 94, "C"};

static SemaphoreHandle_t uartMutex;

/*--------------------UART Functions-----------------------*/

static void UART_init(void)
{
	/* 9600 baud at 16 MHz. */
	UBRR0H = 0;
	UBRR0L = 103;

	UCSR0B = (1 << TXEN0);
	UCSR0C = (1 << UCSZ01) | (1 << UCSZ00);
}

static void UART_print(const char *message)
{
	while (*message) {
		while (!(UCSR0A & (1 << UDRE0)));
		UDR0 = *message++;
	}
}

/*--------------------FreeRTOS Task------------------------*/

static void LED_task(void *parameter)
{
	LEDTask *task = (LEDTask *)parameter;
	TickType_t lastWake = xTaskGetTickCount();

	while (1) {
		/* Turn LED on. */
		PORTB |= (1 << task->pin);

		/* Allow other tasks to run while LED is on. */
		vTaskDelay(task->onTime);

		/* Turn LED off. */
		PORTB &= ~(1 << task->pin);

		/* Check whether the task completed before its deadline. */
		TickType_t elapsed = xTaskGetTickCount() - lastWake;

		xSemaphoreTake(uartMutex, portMAX_DELAY);

		UART_print("Task ");
		UART_print(task->name);

		if (elapsed <= task->period) {
			UART_print(" complete: ON TIME\r\n");
		} else {
			UART_print(" complete: LATE\r\n");
		}

		xSemaphoreGive(uartMutex);

		/* Wait until the start of the next period. */
		vTaskDelayUntil(&lastWake, task->period);
	}
}

/*-----------------------------------------------------*/

int main(void)
{
	/* Configure PB0, PB1, and PB2 as outputs. */
	DDRB |= (1 << PB0) | (1 << PB1) | (1 << PB2);
	PORTB &= ~((1 << PB0) | (1 << PB1) | (1 << PB2));

	/* Initialize UART and mutex. */
	UART_init();
	uartMutex = xSemaphoreCreateMutex();

	if (uartMutex == NULL) {
		while (1);
	}

	/* Create tasks with Rate Monotonic priorities. */
	BaseType_t a = xTaskCreate(LED_task, "A", 256, &taskA, 3, NULL);
	BaseType_t b = xTaskCreate(LED_task, "B", 256, &taskB, 2, NULL);
	BaseType_t c = xTaskCreate(LED_task, "C", 256, &taskC, 1, NULL);

	if (a != pdPASS || b != pdPASS || c != pdPASS) {
		while (1);
	}

	vTaskStartScheduler();

	while (1);
}
