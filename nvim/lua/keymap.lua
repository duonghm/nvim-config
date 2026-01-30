
-- Esc button in terminal
vim.g.mapleader = " "
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit insert mode in terminal' })
vim.keymap.set('i', '<C-Right>', '<End>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-Left>', '<Home>', { noremap = true, silent = true })

-- Telescope keymap
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

