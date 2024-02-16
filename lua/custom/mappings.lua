-- ./lua/custom/mappings.lua
-- Desc: Custom key mappings

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set({ 'n', 'v', 'x' }, '<C-n>', '<Nop>', { silent = true })

-- vim.keymap.set("n", "<leader>e", "<cmd> Neotree toggle <CR>", { desc = "Toggle neotree" })
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save File" })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- vim.keymap.set("n", "<leader>q", "<cmd> q <CR>", { desc = "Quit file" })
vim.keymap.set("n", "<BS>", "<C-^>`”zz", { desc = "Switch to previous buffer" })
-- vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- preserve visual block selection on indent
vim.keymap.set("v", ">", ">gv", { desc = "Indent" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent" })

-- switch ; and : commands
vim.keymap.set({ "n", "v" }, ";", ":", { desc = "Command" })
vim.keymap.set({ "n", "v" }, ":", ";", { desc = "Command" })

-- vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Move to next search match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search match" })

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without overwriting clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without overwriting clipboard" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Ex mode" })
