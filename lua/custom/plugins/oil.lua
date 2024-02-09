return {
    {
      'stevearc/oil.nvim',
      opts = {},
      -- Optional dependencies
      -- Keymaps in oil buffer. Can be any value that `vim.keymap.set` accepts OR a table of keymap
      -- options with a `callback` (e.g. { callback = function() ... end, desc = "", mode = "n" })
      -- Additionally, if it is a string that matches "actions.<name>",
      -- it will use the mapping at require("oil.actions").<name>
      -- Set to `false` to remove a keymap
      -- See :help oil-actions for a list of all available actions
      -- keymaps = {
      --   -- ["g?"] = "actions.show_help",
      --   -- ["<CR>"] = "actions.select",
      --   -- ["<C-s>"] = "false",
      --   -- ["<C-h>"] = "false",
      --   -- ["<C-t>"] = "false",
      --   -- ["<C-p>"] = "actions.preview",
      --   -- ["<C-c>"] = "actions.close",
      --   -- ["<C-l>"] = "actions.refresh",
      --   -- ["-"] = "actions.parent",
      --   -- ["_"] = "actions.open_cwd",
      --   -- ["`"] = "actions.cd",
      --   -- ["~"] = "actions.tcd",
      --   -- ["gs"] = "actions.change_sort",
      --   -- ["gx"] = "actions.open_external",
      --   -- ["g."] = "actions.toggle_hidden",
      --   -- ["g\\"] = "actions.toggle_trash",
      -- },
      -- Set to false to disable all of the above keymaps
      use_default_keymaps = false,
      dependencies = { "nvim-tree/nvim-web-devicons" },
    }
  }
  