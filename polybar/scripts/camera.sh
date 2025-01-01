#!/usr/bin/env sh
CAMERA=$( lsmod | grep -i 'uvcvideo' | head -n 1 | cut -c 31 )

if [ $CAMERA -eq 1 ]
then
    echo ""
else
    echo ""
fi
