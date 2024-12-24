local wezterm = require 'wezterm'

local colorscheme = require 'decor.colorscheme'

local M = {}

M.apply_config = function(config)
	config.color_scheme = colorscheme.getColorScheme()
	config.window_frame = {
		font = wezterm.font_with_fallback {
			{ family = 'ComicShannsMono Nerd Font Mono',  weight = "Bold", },
			{ family = 'ComicShannsMono Nerd Font Propo', weight = "Bold", },
			{ family = 'FiraMonoNerdFontMono',            weight = "Bold", },
		},
		active_titlebar_bg = '#7287fd',
	}
	config.use_fancy_tab_bar = true
	config.hide_tab_bar_if_only_one_tab = false
	config.foreground_text_hsb = {
		hue = 1.0,
		saturation = 1.2,
		brightness = 1.5,
	}
	-- config.font = wezterm.font('FiraMono Nerd Font Mono')
	config.font = wezterm.font_with_fallback {
		{ family = 'ComicShannsMono Nerd Font Propo', },
		{ family = 'ComicShannsMono Nerd Font Mono', },
		{ family = 'FiraMonoNerdFontMono', },
	}
	config.font_size = 13
	-- config.window_background_opacity = 0.8
	config.window_background_image = 'D:\\Wallpapers\\Aesthetic\\aurora_borealis.png'
	config.window_background_image_hsb = {
		brightness = 0.7,
		hue = 1.0,
		saturation = 1.0,
	}
end

return M
