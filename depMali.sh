#!/bin/sh
X264HOME=/home/testmali
#gcc-arm-linux-internal-indirect-debug-ns2816-mali400-gles20-linux
X264DST=$X264HOME
X264BUILD=$X264HOME

echo "#######################"
echo "HOME IS  $X264HOME"
echo "#######################"


echo "##########SETENV FOR DEP yasm######"
export PATH=$X264DST/bin:$PATH:/bin
export LD_LIBRARY_PATH=$X264DST/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$X264DST/lib/pkgconfig:$PKG_CONFIG_PATH
export C_INCLUDE_PATH=$X264DST/include:$C_INCLUDE_PATH
export LIBRARY_PATH=$X264DST/lib:$LIBRARY_PATH



echo "PATH IS $PATH"
echo "LD_LIBRARY_PATH IS $LD_LIBRARY_PATH"
echo "C_INCLUDE_PATH IS $C_INCLUDE_PATH "
echo "LIBRARY_PATH IS $LIBRARY_PATH "
echo "##########dep yasm done##########"


