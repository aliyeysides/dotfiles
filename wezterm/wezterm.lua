local wezterm = require("wezterm")

local is_dark = true

return {
	font = wezterm.font_with_fallback({
		"Liga SFMono Nerd Font",
		"Apple Color Emoji",
	}),
	color_scheme = "ayu",
	font_size = 13,
	max_fps = 120,
	enable_wayland = false,
	pane_focus_follows_mouse = false,
	warn_about_missing_glyphs = true,
	show_update_window = true,
	check_for_updates = true,
	line_height = 1.5,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	audible_bell = "Disabled",
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	initial_cols = 110,
	initial_rows = 25,
	inactive_pane_hsb = {
		saturation = 1.0,
		brightness = is_dark and 0.85 or 0.95,
	},
	native_macos_fullscreen_mode = true,
	enable_scroll_bar = false,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	show_new_tab_button_in_tab_bar = false,
	window_background_opacity = 1.0,
	tab_max_width = 50,
	hide_tab_bar_if_only_one_tab = true,
	disable_default_key_bindings = false,
	front_end = "WebGpu",
}
