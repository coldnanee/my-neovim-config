vim.g.mapleader = " "


vim.keymap.set('n', '<leader>s', ':w<CR>') --save
vim.keymap.set('n', '<leader>z', ':e!<CR>') --ctrl+z

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
