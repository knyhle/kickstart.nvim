-- ./lua/custom/mappings.lua
-- Desc: Custom key mappings

vim.keymap.set("n", "H", "^", { desc = "Move to first non-blank character" })
vim.keymap.set("n", "L", "$", { desc = "Move to end of line" })

vim.keymap.set("n", "<leader>ww", "<cmd> w <CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd> q <CR>", { desc = "Quit file" })
vim.keymap.set("n", "<BS>" , "<C-^>`”zz", { desc = "Switch to previous buffer" })

-- vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- preserve visual block selection on indent
vim.keymap.set("v", ">", ">gv", { desc = "Indent" })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent" })

-- switch ; and : commands
vim.keymap.set("n", ";", ":", { desc = "Command" })
vim.keymap.set("n", ":", ";", { desc = "Command" })

vim.keymap.set("n", "<leader>vs", "<cmd> vsplit <CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>vh", "<cmd> split <CR>", { desc = "Horizontal split" })

vim.keymap.set('n', '<C-p>', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join line below" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Move to next search match" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search match" })

vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without overwriting clipboard" })

vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete without overwriting clipboard" })
vim.keymap.set("v", "<leader>d", '"_d', { desc = "Delete without overwriting clipboard" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Ex mode" })
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-n>", "<cmd> Neotree toggle <CR>", { desc = "Toggle file tree" })
