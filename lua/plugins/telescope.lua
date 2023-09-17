local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) --find files
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {}) --find highlighted  word
vim.keymap.set('n', '<leader>fb', builtin.buffers, {}) --show all open buffers

vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}) --show help :tags list
--vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
--vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {}) --show git status list
vim.keymap.set('n', '<leader>gr', builtin.lsp_references,
               {noremap = true, silent = true}) --show all using element into project
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions,
               {noremap = true, silent = true}) --show dependence
