require("config.lazy")
require("keymap")

vim.opt.nu = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.textwidth = 80
vim.opt.fileformat = 'unix' 
vim.opt.fixendofline = false


vim.opt.autoread = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
        -- show the full message inline
        source = "always", 
    },
    signs = true, -- show icons in the gutter
    update_in_insert = false, -- don't update while in insert mode
    underline = true, -- underline errors in the code
    severity_sort = true, -- sort diagnostics by severity (errors first)
    float = {
        border = "single",
        style = "minimal",
        source = "always",
        header = "",
        prefix = "",
    },
})

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic window' })

