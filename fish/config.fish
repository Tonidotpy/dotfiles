if status is-login
    # Create XDG runtime directory if non existent
    if ! set -q XDG_RUNTIME_DIR
	    set -Ux XDG_RUNTIME_DIR "$HOME"/.local/$(id -u)
    end
    if test ! -d "$XDG_RUNTIME_DIR"
        mkdir -p "$XDG_RUNTIME_DIR"
        chmod 0700 "$XDG_RUNTIME_DIR"
    end

    # FIX: Podman requires a tmpfs or to remove these folders
    # after a shutdown or reboot of the system otherwise it will not work
    rm -rf "$XDG_RUNTIME_DIR"/containers "$XDG_RUNTIME_DIR"/libpod/tmp

    # Set default brightness
    light -I

    # FIX: For additional fonts figma requires the desktop agent which is
    # unofficial for Linux
    runsvdir "$XDG_DATA_HOME/runit/service" &

    # Start River Window Manager
    dbus-run-session river
end

if status is-interactive
    tellme
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
