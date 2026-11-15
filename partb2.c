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
	uint16_t onTimeMs;
	TickType_t period;
	const char *name;
} LEDTask;

/* CPU time in milliseconds, period in RTOS ticks. */
static LEDTask taskA = {PB0, 150, 47, "A"};
static LEDTask taskB = {PB1, 300, 75, "B"};
static LEDTask taskC = {PB2, 1400, 94, "C"};

static SemaphoreHandle_t uartMutex;

/*--------------------Timer Functions----------------------*/

static void Timer1_init(void)
{
	/* Timer1 normal mode, prescaler 64. */
	TCCR1A = 0;
	TCCR1B = (1 << CS11) | (1 << CS10);
	TCNT1 = 0;
}

static void busy_wait_ms(uint16_t durationMs)
{
	/* 250 timer counts = 1 ms at 16 MHz. */
	for (uint16_t ms = 0; ms < durationMs; ms++) {
		uint16_t start = TCNT1;

		while ((uint16_t)(TCNT1 - start) < 250) {
			/* Keep CPU busy until 1 ms passes. */
		}
	}
}

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

	/* All task periods are referenced to scheduler start. */
	TickType_t lastWake = 0;

	while (1) {
		/* Prevent other tasks from running. */
		vTaskSuspendAll();

		PORTB |= (1 << task->pin);

		/* Occupy CPU for the full task duration. */
		busy_wait_ms(task->onTimeMs);

		PORTB &= ~(1 << task->pin);

		/* Allow other tasks to run again. */
		xTaskResumeAll();

		/* Check deadline against the scheduled release. */
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

		/* Maintain the periodic release schedule. */
		vTaskDelayUntil(&lastWake, task->period);
	}
}

/*-----------------------------------------------------*/

int main(void)
{
	/* Configure LED output pins. */
	DDRB |= (1 << PB0) | (1 << PB1) | (1 << PB2);
	PORTB &= ~((1 << PB0) | (1 << PB1) | (1 << PB2));

	Timer1_init();
	UART_init();

	uartMutex = xSemaphoreCreateMutex();

	if (uartMutex == NULL) {
		while (1);
	}

	/* Create tasks with RM priorities and stack depth 256. */
	BaseType_t a = xTaskCreate(LED_task, "A", 256, &taskA, 3, NULL);
	BaseType_t b = xTaskCreate(LED_task, "B", 256, &taskB, 2, NULL);
	BaseType_t c = xTaskCreate(LED_task, "C", 256, &taskC, 1, NULL);

	if (a != pdPASS || b != pdPASS || c != pdPASS) {
		while (1);
	}

	vTaskStartScheduler();

	while (1);
}
