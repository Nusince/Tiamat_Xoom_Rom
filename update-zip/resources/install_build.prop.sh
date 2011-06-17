#!/bin/bash

# The device is a MZ600 (or using it's build.prop)
/tmp/busybox grep "ro.telephony.default_network=4" /system/build.prop > /dev/null
if [ $? = 0 ]
then
	/tmp/busybox cp /tmp/mz600.build.prop /system/build.prop
	exit $?
fi

# The device is a MZ601 
/tmp/busybox grep "ro.telephony.default_network=0" /system/build.prop > /dev/null
if [ $? = 0 ]
then
	/tmp/busybox cp /tmp/mz601.build.prop /system/build.prop
	exit $?
fi
