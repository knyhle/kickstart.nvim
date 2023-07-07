
vim.cmd.colorscheme 'catppuccin'

vim.opt.splitright = true

vim.cmd([[ autocmd VimEnter * Copilot auth ]])
vim.keymap.set("n", "<leader>vs", "<cmd> vsplit <CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<leader>vh", "<cmd> split <CR>", { desc = "Horizontal split" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft <CR>", { desc = "Move to left window" })
-- vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown <CR>", { desc = "Move to bottom window" })
-- vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp <CR>", { desc = "Move to top window" })
-- vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight <CR>", { desc = "Move to right window" })

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
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
