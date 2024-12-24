local M = {}
local wezterm = require 'wezterm'

M.getMouseBindings = function()
	return {
		{
			event = { Down = { streak = 3, button = 'Left' } },
			action = wezterm.action.SelectTextAtMouseCursor 'SemanticZone',
			mods = 'NONE',
		},
		{
			event = { Down = { streak = 1, button = "Right" } },
			mods = "NONE",
			action = wezterm.action_callback(function(window, pane)
				local has_selection = window:get_selection_text_for_pane(pane) ~= ""
				if has_selection then
					window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
					window:perform_action(act.ClearSelection, pane)
				else
					window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
				end
			end),
		},
	}

end

return M
