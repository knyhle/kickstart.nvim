
vim.cmd([[ autocmd VimEnter * Copilot auth ]])
vim.keymap.set("n", "<leader>vs", "<cmd> vsplit <CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>vh", "<cmd> split <CR>", { desc = "Horizontal split" })

vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft <CR>", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown <CR>", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp <CR>", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight <CR>", { desc = "Move to right window" })

-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
--
