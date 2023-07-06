
vim.cmd([[ autocmd VimEnter * Copilot auth ]])
vim.keymap.set("n", "<leader>vs", "<cmd> vsplit <CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>vh", "<cmd> split <CR>", { desc = "Horizontal split" })

