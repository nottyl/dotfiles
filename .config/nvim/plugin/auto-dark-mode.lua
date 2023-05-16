local auto_dark_mode = require "auto-dark-mode"

Set_light_mode = function()
	vim.cmd('colorscheme rose-pine-dawn')
end

Set_dark_mode = function()
	vim.cmd('colorscheme nordic')
end

-- Use light by default
Set_dark_mode()

auto_dark_mode.setup({
	update_interval = 5000,
	set_light_mode = Set_light_mode,
	set_dark_mode = Set_dark_mode,
})
auto_dark_mode.init()
