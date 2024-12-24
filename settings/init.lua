local M = {}

local mousebindings = require 'settings.mousebindings'
local keybinds = require 'settings.keybinds'
local startupFunctions = require 'settings.startupfunc'
local userSettings = require 'settings.settings'

M.apply_config = function(config)
	-- User Settings
	userSettings.applyUserSettings(config)

	config.mouse_bindings = mousebindings.getMouseBindings()
	config.disable_default_key_bindings = true
	config.leader = keybinds.getLeader()
	config.keys = keybinds.getKeyinds()

	-- Startup Functions
	startupFunctions.maximizeOnStartup()

	config.default_prog = { 'powershell' }
	-- config.default_domain = 'WSL:Ubuntu-24.04'
end

return M
