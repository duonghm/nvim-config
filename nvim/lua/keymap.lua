
vim.g.mapleader = " "
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit insert mode in terminal' })
vim.keymap.set('i', '<C-Right>', '<End>', { noremap = true, silent = true })
vim.keymap.set('i', '<C-Left>', '<Home>', { noremap = true, silent = true })
