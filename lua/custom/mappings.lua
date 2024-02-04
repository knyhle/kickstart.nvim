-- ./lua/custom/mappings.lua
-- Desc: Custom key mappings

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("n", "<leader>e", "<cmd> Neotree toggle <CR>", { desc = "Toggle neotree" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save File" })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("n", "<leader>q", "<cmd> q <CR>", { desc = "Quit file" })
-- vim.keymap.set("n", "<BS>" , "<C-^>`”zz", { desc = "Switch to previous buffer" })

-- vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- preserve visual block selection on indent
vim.keymap.set("v", ">", ">gv", { desc = "Indent" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent" })

-- switch ; and : commands
vim.keymap.set({ "n", "v" }, ";", ":", { desc = "Command" })
vim.keymap.set({ "n", "v" }, ":", ";", { desc = "Command" })

-- vim.keymap.set("n", "<leader>vs", "<cmd> vsplit <CR>", { desc = "Vertical split" })
-- vim.keymap.set("n", "<leader>vh", "<cmd> split <CR>", { desc = "Horizontal split" })
-- vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join line below" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Move to next search match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search match" })

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without overwriting clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without overwriting clipboard" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Ex mode" })

-- local mark = require("harpoon.mark")
-- local ui = require("harpoon.ui")
--
-- vim.keymap.set("n", "<leader>hm", mark.add_file, { desc = "Add file to harpoon" })
-- vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle harpoon quick menu" })
--
-- vim.keymap.set("n", "<leader>gh", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<leader>gt", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<leader>gn", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<leader>gs", function() ui.nav_file(4) end)
