#!/bin/bash
insmod  hx170dec.ko 
chmod 777 /dev/hx170

echo "mem alloc ko "
insmod memalloc.ko
chmod 777 /dev/memalloc

echo "hx280enc ko"
insmod hx280enc.ko
chmod 777 /dev/hx280

echo "done"

