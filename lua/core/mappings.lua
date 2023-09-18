vim.g.mapleader = " "


vim.keymap.set('n', '<leader>w', ':w<CR>') --save
vim.keymap.set('n', '<leader>z', ':e!<CR>') --ctrl+z

-- open fold - select fold + zo - visual mode
-- close fold - select text + zf - visual mode

-- y - copy selected text - visual mode
-- p - past selected text - visual mode

-- Neotree

vim.keymap.set('n', '<leader>e', ':Neotree<CR>')
vim.keymap.set('n', '<leader>g', ':Neotree float git_status<CR>')

-- Bufferline

vim.keymap.set('n', '<leader>p', ':BufferLinePick<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')

-- + Telescope mapping
-- + Cmp mapping
-- + Lsp mapping
-- + Terminal mapping
