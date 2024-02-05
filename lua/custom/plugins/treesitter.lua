return {
  -- Show context of the current function
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufEnter",
    enabled = true,
    opts = { mode = "cursor", max_lines = 3 },
  }
}
