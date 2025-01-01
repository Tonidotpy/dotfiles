#!/usr/bin/env bash

MUTED=$(pacmd list-sources | grep -A13 "\* index" | grep muted | cut -d' ' -f2)

if [ -n "$MUTED" ]
then
    if [ "$MUTED" = "yes" ]
    then
        echo ""
    else
        echo ""
    fi
else
    echo ""
fi

