#!/bin/env sh

XRESOURCES="$HOME/.Xresources"
CONFIG="$HOME/.config/rofi/"
THEME="$CONFIG/themes/global.rasi"

getCol() {
    NAME=$1
    COLOR="$(xrdb -query | grep -w -i "${NAME}" | awk '{print $NF}')"
    echo ${COLOR}
}
putCol() {
    KEY=$1
    VALUE=$2
    printf "\t%s: \t%s;\n" "${KEY}" "${VALUE}" >> "${THEME}"
}

if [ -f ${XRESOURCES} ] && [ -f ${THEME} ] ; then
    printf "* {\n" > "${THEME}"

    putCol "White" "$(getCol 'color15')"
    putCol "Black" "$(getCol 'color0')"

    putCol "Background"    "$(getCol 'background')"
    putCol "BackgroundAlt" "$(getCol 'color10')"
    putCol "Foreground"    "$(getCol 'foreground')"
    putCol "ForegroundAlt" "$(getCol 'color9')"

    putCol "Primary"      "$(getCol 'color1')"
    putCol "PrimaryAlt"   "$(getCol 'color3')"
    putCol "Secondary"    "$(getCol 'color2')"
    putCol "SecondaryAlt" "$(getCol 'color4')"

    putCol "Warning" "$(getCol 'color5')"
    putCol "Alert"   "$(getCol 'color6')"

    printf "}\n" >> "${THEME}"
fi

unset -f getCol
unset -f putCol
