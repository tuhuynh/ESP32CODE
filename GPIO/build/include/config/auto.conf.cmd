deps_config := \
	/home/httu/esp/esp-idf/components/app_trace/Kconfig \
	/home/httu/esp/esp-idf/components/aws_iot/Kconfig \
	/home/httu/esp/esp-idf/components/bt/Kconfig \
	/home/httu/esp/esp-idf/components/esp32/Kconfig \
	/home/httu/esp/esp-idf/components/ethernet/Kconfig \
	/home/httu/esp/esp-idf/components/fatfs/Kconfig \
	/home/httu/esp/esp-idf/components/freertos/Kconfig \
	/home/httu/esp/esp-idf/components/log/Kconfig \
	/home/httu/esp/esp-idf/components/lwip/Kconfig \
	/home/httu/esp/esp-idf/components/mbedtls/Kconfig \
	/home/httu/esp/esp-idf/components/openssl/Kconfig \
	/home/httu/esp/esp-idf/components/spi_flash/Kconfig \
	/home/httu/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/httu/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/httu/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/httu/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
