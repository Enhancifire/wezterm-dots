local M = {}

M.applyUserSettings = function(config)
	config.scrollback_lines = 10000
	config.audible_bell = 'Disabled'
end

return M
