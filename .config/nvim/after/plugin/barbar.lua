require 'barbar'.setup {
	animation = true,
	tabpages = false,
    --auto_hide = true,
	clickable = true,
	sidebar_filetypes = {
        NvimTree = { text = "File Explorer" },
        UndoTree = { text = "Everything Bagel"}
    },
    preset = 'default',
    no_name_title = nil,
}

-- Keymap Setting
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-{>','<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-}>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<C-{>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<C-}>', '<Cmd>BufferMoveNext<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-P>', '<Cmd>BufferPin<CR>', opts)
map('n', '<A-C>', '<Cmd>BufferClose<CR>', opts)

