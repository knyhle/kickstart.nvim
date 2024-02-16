-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

vim.cmd.colorscheme 'catppuccin-mocha'
vim.cmd([[ autocmd VimEnter * Copilot auth ]])
vim.cmd([[ autocmd VimEnter * clearjumps ]])

_G.jump_and_center = function()
	local char = vim.fn.nr2char(vim.fn.getchar())
	vim.cmd("normal! '" .. char)
	vim.cmd("normal! zz")
end
vim.api.nvim_set_keymap('n', "'", ":lua jump_and_center()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', "`", ":lua jump_and_center()<CR>", { noremap = true, silent = true })

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.swapfile = false
vim.opt.scrolloff = 8

vim.opt.relativenumber = true

require('custom.options')
require('custom.autocmds')
require('custom.mappings')
