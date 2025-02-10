if status is-login
    # Create XDG runtime directory if non existent
    if ! set -q XDG_RUNTIME_DIR
	    set -Ux XDG_RUNTIME_DIR "$HOME"/.local/$(id -u)
    end
    if test ! -d "$XDG_RUNTIME_DIR"
        mkdir "$XDG_RUNTIME_DIR"
        chmod 0700 "$XDG_RUNTIME_DIR"
    end

    # Start River Window Manager
    dbus-run-session river
end

if status is-interactive
    tellme
end
