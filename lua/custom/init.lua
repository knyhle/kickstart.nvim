-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

vim.cmd.colorscheme 'catppuccin-mocha'

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.scrolloff = 8

vim.opt.relativenumber = true

require('custom.mappings')
