// Chuong trinh dieu khien ON/OFF GPIO2, thoi gian ON/OFF 500ms
// Board thu nghiem ESP32 NodeMCU
// 
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"

#define LED_GPIO 2
void blink_task(void *pvParameter)
{
	gpio_set_direction(LED_GPIO, GPIO_MODE_OUTPUT);//Dat chan GPIO2 o che do xuat (OUTPUT).
	while(1) {
	//Dat GPIO2 o muc logic 0.
	gpio_set_level(LED_GPIO, 0);
	vTaskDelay(500 / portTICK_PERIOD_MS);//delay 1000ms
	//Dat GPIO2 o muc logic 1.
	gpio_set_level(LED_GPIO, 1);
	vTaskDelay(500 / portTICK_PERIOD_MS);//delay 1000ms
	}
}

void app_main()
{
	xTaskCreate(&blink_task, "blink_task", 512, NULL, 5, NULL);//Cho phep blink_task thuc hien.
}
