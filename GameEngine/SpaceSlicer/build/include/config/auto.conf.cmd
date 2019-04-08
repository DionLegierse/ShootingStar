deps_config := \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/app_trace/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/aws_iot/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/bt/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/driver/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/esp32/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/esp_adc_cal/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/esp_http_client/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/ethernet/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/fatfs/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/freertos/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/heap/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/libsodium/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/log/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/lwip/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/mbedtls/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/nvs_flash/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/openssl/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/pthread/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/spi_flash/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/spiffs/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/tcpip_adapter/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/vfs/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/wear_levelling/Kconfig \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/bootloader/Kconfig.projbuild \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/esptool_py/Kconfig.projbuild \
	/c/Users/hammi/.platformio/packages/framework-espidf/components/partition_table/Kconfig.projbuild \
	/c/Users/hammi/.platformio/packages/framework-espidf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
