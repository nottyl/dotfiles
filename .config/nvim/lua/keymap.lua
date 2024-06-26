vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local unmap = vim.keymap.del
local autocmd = vim.api.nvim_create_autocmd

-- Move
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line down" })
map("v", ">", ">gv", { desc = "Indent to right" })
map("v", "<", "<gv", { desc = "Indent to left" })
map("v", "=", "=gv", { desc = "Move up one line"} )

-- Centered Motions
map("n", "<C-d>", "<C-d>zz", { desc = "Move page down with cursor centered" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move page up with cursor centered" })
map("n", "n", "nzzzv", { desc = "Find next with cursor centered" })
map("n", "N", "Nzzzv", { desc = "Find last with cursor centered" })

-- Join line below
map("n", "J", "mzJ`z", { desc = "Join line below without moving cursor" })

-- Clipboard system
map({ "n", "x", "v" }, "<leader>d", '"_d', { desc = "Delete without cutting" })
map({ "n", "x", "v" }, "<leader>c", '"_dc', { desc = "Change without cutting" })
map({ "n", "x", "v" }, "<leader>p", '"_dP', { desc = "Paste without copying selected" })
map({ "n", "x", "v" }, "<leader>y", '"+y', { desc = "Copy to system clipboard" })

map("n", "Q", "<nop>", { desc = "It's the worse place in the universe" })

vim.keymap.set("n", "<leader>nf", function()
  vim.cmd "enew"
end, { desc = "Open new buffer" })

vim.keymap.set("c", "#lm", [[\{-}]], { desc = "[L]azy [M]atch" })
vim.keymap.set("c", "#capl", [[\(.\{-}\)]], { desc = "[CAP]ture [L]ess" })
vim.keymap.set("c", "#capm", [[\(.*\)]], { desc = "[CAP]ture [M]ore" })

vim.keymap.set("n", "j", "gj", { desc = "J that works with line wrap" })
vim.keymap.set("n", "k", "gk", { desc = "K that works with line wrap" })
vim.keymap.set("n", "<Down>", "g<Down>", { desc = "<Down> that works with line wrap" })
vim.keymap.set("n", "<Up>", "g<Up>", { desc = "<Up> that works with line wrap" })

vim.keymap.set("n", "<leader>w", function()
  vim.cmd.setlocal "invwrap"
end, { desc = "toggle wrap locally", silent = true })

-- Tree
vim.api.nvim_set_keymap("n", "<C-1>", ":NvimTreeToggle<CR>", { desc = "NvimTree", noremap = true, silent = true })

