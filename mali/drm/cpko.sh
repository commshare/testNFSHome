#!/bin/bash
echo " ...cp ump.ko drm.ko mali.ko mali_drm.ko here .."
KERNEL=/home/zhangbin/nuf/sc/expriment_linux_kernel
DRM=$KERNEL/drivers/gpu/drm/drm.ko
MALI_DRM=$KERNEL/drivers/gpu/drm/mali/mali_drm.ko
GPU=$KERNEL/drivers/gpu/arm/mali400_r3p2-01rel1
MALI=$GPU/mali/mali.ko
UMP=$GPU/ump/ump.ko

DST=/home/zhangbin/nuf/nfshome/mali/drm
cp $DRM $DST
cp $MALI_DRM $DST
cp $MALI $DST
cp $UMP $DST



echo "cp ko from experiment_kernel"
cp $KERNEL/arch/arm/boot/uImage $DST

echo "...cp done ..."
