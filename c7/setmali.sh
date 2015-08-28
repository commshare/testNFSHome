#!/bin/bash

echo "insmod ump.ko"
insmod /lib/modules/ump.ko
echo "insmod mali.ko"
insmod /lib/modules/mali.ko

echo "done"
