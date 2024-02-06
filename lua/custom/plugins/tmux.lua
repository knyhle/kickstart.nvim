return {
  'alexghergh/nvim-tmux-navigation',
  config = function()
    local nvim_tmux_nav = require('nvim-tmux-navigation')
    nvim_tmux_nav.setup {
      disable_when_zoomed = true, -- defaults to false
    }

    vim.keymap.set("n", "<C-w>h", nvim_tmux_nav.NvimTmuxNavigateLeft, { desc = "Tmux Navigate Left" })
    vim.keymap.set("n", "<C-w>j", nvim_tmux_nav.NvimTmuxNavigateDown, { desc = "Tmux Navigate Down" })
    vim.keymap.set("n", "<C-w>k", nvim_tmux_nav.NvimTmuxNavigateUp, { desc = "Tmux Navigate Up" })
    vim.keymap.set("n", "<C-w>l", nvim_tmux_nav.NvimTmuxNavigateRight, { desc = "Tmux Navigate Right" })
  end,
}
