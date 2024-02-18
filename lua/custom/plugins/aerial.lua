return {
  {
    "stevearc/aerial.nvim",
    opts = function()
      local opts = {
        attach_mode = "global",
        backends = { "lsp", "treesitter", "markdown", "man" },
        show_guides = true,
        layout = {
          resize_to_content = false,
          win_opts = {
            winhl = "Normal:NormalFloat,FloatBorder:NormalFloat,SignColumn:SignColumnSB",
            signcolumn = "yes",
            statuscolumn = " ",
          },
        },
        -- stylua: ignore
        guides = {
          mid_item   = "├╴",
          last_item  = "└╴",
          nested_top = "│ ",
          whitespace = "  ",
        },
      }
      return opts
    end,
    keys = {
      { "<leader>cs", "<cmd>AerialToggle<cr>", desc = "Aerial (Symbols)" },
    },
  },

  -- Telescope integration
  -- {
  --   "nvim-telescope/telescope.nvim",
  --   optional = true,
  --   opts = function()
  --     local status_ok, telescope = pcall(require, "telescope")
  --     if not status_ok then
  --       return
  --     end
  --     require("telescope").load_extension("aerial")
  --   end,
  --   keys = {
  --     {
  --       "<leader>ss",
  --       "<cmd>Telescope aerial<cr>",
  --       desc = "Goto Symbol (Aerial)",
  --     },
  --   },
  -- },
  -- edgy integration
  {
    "folke/edgy.nvim",
    optional = true,
    opts = function(_, opts)
      local status_ok, aerial = pcall(require, "aerial.nvim")
      if not status_ok then
        return
      end

      opts.right = opts.right or {}
      table.insert(opts.right, {
        title = "Aerial",
        ft = "aerial",
        pinned = true,
        open = "AerialOpen",
      })
    end,
  },
}
