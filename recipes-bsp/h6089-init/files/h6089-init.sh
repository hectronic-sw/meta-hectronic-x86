#!/bin/sh

SMBUS="/sys/class/i2c-dev/i2c-0/device"
I2CBUS="/sys/class/i2c-dev/i2c-1/device"

case "$1" in
	start)
		echo uc2-i2c 0x19 > ${SMBUS}/new_device
		true
		;;

	stop)
		echo 0x19 > ${SMBUS}/delete_device
		true
		;;

	restart)
		$0 stop
		$0 start
		;;

	*)
		echo "Usage: $0 { start | stop | restart }" >&2
		exit 1
		;;
esac

exit 0
