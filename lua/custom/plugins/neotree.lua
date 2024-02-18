return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "v3.x",
  cmd = "Neotree",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      hijack_netrw_behavior = "open_current"
    })
  end,
}
