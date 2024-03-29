-- Disabled auto_dark_mode for now
-- TODO: confirm if it's fixed
-- NOTE: `<leader>gc` to uncomment this entire block.

local auto_dark_mode = require "auto-dark-mode"

Set_light_mode = function()
  vim.cmd "colorscheme catppuccin-latte"
end

Set_dark_mode = function()
  vim.cmd "colorscheme nordic"
end

auto_dark_mode.setup {
  update_interval = 10000,
  set_light_mode = Set_light_mode,
  set_dark_mode = Set_dark_mode,
}

auto_dark_mode.init()
