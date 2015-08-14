#!/bin/bash
echo "rm srs_1.yuv"
rm -rf srs_1.yuv
echo "do test ..."
CMD=
if [ $# == 1 ];then
    echo "use default to decode one yuv"
else
    if [ $1 == "-P" ];then
        echo "use -P to output planar yuv"
        CMD=$1
    fi
fi
    ./hx170dec_versatile -N1 -Osrs_1.yuv $CMD 720p.h264.raw
    

echo "....done....."
