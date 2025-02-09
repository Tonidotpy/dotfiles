if status is-login
    set -gx XDG_CONFIG_HOME "$HOME/.config"

    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" -eq 1
	    exec river
    end
end

if status is-interactive
    tellme
end
