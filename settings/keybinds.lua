local M = {}
local wezterm = require 'wezterm'
local act = wezterm.action

M.getLeader = function()
	return { key = 'q', mods = 'ALT', timeout_milliseconds = 2000 }
end
M.getKeyinds = function()
	return {
		{ key = "c", mods = "LEADER",       action = act.SpawnTab('CurrentPaneDomain') },
		{ key = "]", mods = "LEADER",       action = act.ActivateCopyMode },
		{ key = '"', mods = "LEADER|SHIFT", action = act.SplitVertical { domain = 'CurrentPaneDomain' }, },
		{ key = "%", mods = "LEADER|SHIFT", action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }, },
		{ key = "n", mods = "ALT",          action = act.ActivateTabRelative(1) },
		{ key = "p", mods = "ALT",          action = act.ActivateTabRelative(-1) },
		{ key = "z", mods = "LEADER",       action = act.TogglePaneZoomState },
		{ key = "V", mods = 'CTRL',         action = act.PasteFrom 'Clipboard' },
	}
end

return M
