#!/bin/bash
echo "rm srs_1.yuv"
rm -rf srs_1.yuv
echo "do test ..."
#CMD=
#OUT=
#echo "000000"
if [ $# -eq 0 ];then
    echo "use default to decode one yuv"
    OUT=srs_1_sp.yuv
elif [ "$1" = "-P" ];then
        echo "use -P to output planar yuv"
        CMD="$1"
        OUT=srs_1_p.yuv
    else
        echo "no idea for cmd param"
    
fi
    echo "now : CMD=$CMD OUT=$OUT "
  
    echo "do decoder test ...."
    ./hx170dec_versatile -N1 -O$OUT $CMD 720p.h264.raw

    

echo "....done....."
