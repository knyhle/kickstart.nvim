
return {
  -- Detect tabstop and shiftwidth automatically
  { 'tpope/vim-sleuth' },
  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'catpuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
  },{
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
  },
}
