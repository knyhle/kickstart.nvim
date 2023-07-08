
vim.cmd.colorscheme 'catppuccin-mocha'
vim.cmd([[ autocmd VimEnter * Copilot auth ]])

vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.scrolloff = 8

require('custom.mappings')
