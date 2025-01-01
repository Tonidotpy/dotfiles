# Merge custom Xresources file
xrdb -load $HOME/.Xresources
# Run script to change rofi colors
$HOME/.config/rofi/scripts/reload-colors.sh

# Create XDG_RUNTIME_DIR for current user
if [ -z "${XDG_RUNTIME_DIR}" ]
then
    export XDG_RUNTIME_DIR=/tmp/$(id -u)-runtime-dir
    if [ ! -d "${XDG_RUNTIME_DIR}" ]
    then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

# Set screen brightness to 10%
xbacklight -set 10

# Set keyboard layout
setxkbmap it

# Enable touchpad tap-to-click
xinput set-prop "MSFT0002:01 04F3:3141 Touchpad" "libinput Tapping Enabled" 1

# Start libinput-gestures
libinput-gestures-setup start

# Set background image
./.fehbg

# Starting i3wm
exec dbus-run-session /bin/i3 &

# Automount
dbus-run-session udiskie --tray &
dbus-run-session nm-tray &

# Set screen-lock timeout
xset dpms 300 0 420 s &
xss-lock -n /usr/libexec/xsecurelock/saver_xscreensaver -l -- xsecurelock

