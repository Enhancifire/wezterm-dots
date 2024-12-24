local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action

local config = {}

-- Use Config Builder if Possible
if wezterm.config_builder then
	config = wezterm.config_builder()
end


-- Decor ------------------------------
local decor = require 'decor'
decor.apply_config(config)


-- Settings ------------------------------
local settings = require('settings')
settings.apply_config(config)


-- Launch Menu ------------------------------
local launch_menu = {}
config.launch_menu = launch_menu


-- Smart Splitting ------------------------------
local smartsplits = require 'lua.smartsplits'
smartsplits.apply_to_config(config)

return config
