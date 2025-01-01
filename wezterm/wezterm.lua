local wezterm = require 'wezterm'

local config = wezterm.config_builder()

--- Hot reload    ---
config.automatically_reload_config = true

--- Update checks ---
config.check_for_updates = false
config.check_for_updates_interval_seconds = 86400

--- Miscellaneous ---
config.adjust_window_size_when_changing_font_size = false
config.allow_square_glyphs_to_overflow_width = 'WhenFollowedBySpace'
config.allow_win32_input_mode = true
config.alternate_buffer_wheel_scroll_speed = 3
config.anti_alias_custom_block_glyphs = false
config.audible_bell = 'Disabled'
config.bypass_mouse_reporting_modifiers = 'ALT'
config.canonicalize_pasted_newlines = 'CarriageReturn'
config.cell_width = 1.0
config.clean_exit_codes = { 0 }
config.custom_block_glyphs = true
-- config.daemon_options = {
--     stdout = '$XDG_RUNTIME_DIR/wezterm/stdout',
--     stderr = '$XDG_RUNTIME_DIR/wezterm/stderr',
--     pid_file = '$XDG_RUNTIME_DIR/wezterm/pid',
-- }

--- Cursor        ---
config.animation_fps = 5

config.cursor_blink_ease_in = 'Linear'
config.cursor_blink_ease_out = 'Linear'
config.cursor_blink_rate = 0
config.cursor_thickness = 1

--- Font          ---
config.font = wezterm.font 'Jetbrains Mono'

--- Appearance    ---
-- config.background = {
--     {
        -- source = {
        --     File = '/home/tonidotpy/Media/spike-poster.png'
        -- },
        -- repeat_y = 'Mirror',
        -- hsb = {
        --     brightness = 0.01
        -- },
        -- attachment = {
        --     Parallax = 0.03
        -- },
--     },
-- }
config.bold_brightens_ansi_colors = 'No'
config.char_select_bg_color = '#333333'
config.char_select_fg_color = 'rgba(0.75, 0.75, 0.75, 1.0)'
config.char_select_font_size = 14.0
config.color_scheme = 'kanagawabones'
config.colors = {
    background = '000000FF'
}
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

--- Tabs            ---
config.hide_tab_bar_if_only_one_tab = true

--- Command palette ---
config.command_palette_bg_color = '#191923'
config.command_palette_fg_color = '#CCC6C9'
config.command_palette_font_size = 13.0
config.command_palette_rows = 10

return config

