#!/usr/bin/env sh
CODEC=/proc/asound/card0/codec#0
if [ -f "$CODEC" ];
then
    CHECK=$(cat "$CODEC" | grep -i -A 10 "Speaker Playback Switch" | grep -i "Pin-ctls")

    if [ ! -z "$CHECK" ];
    then
        case $CHECK in
            *"0x00"*)
                echo ""
                exit 0
                ;;
        esac
    fi
fi

echo ""
exit 1
