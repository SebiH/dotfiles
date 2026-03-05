return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup({
        defaults = {
          border = true,
          layout_strategy = "horizontal",
        },
      })
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      require("nvim-tree").setup({
        view = { width = 35 },
        renderer = {
          group_empty = true,
          icons = { show = { git = true, file = true, folder = true } },
        },
        filters = { dotfiles = false },
      })
    end,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup()
    end,
  },

  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        hide_cursor = true,
        easing = "sine",
      })
    end,
  },

  { "mg979/vim-visual-multi" },
  { "godlygeek/tabular" },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup({
        toggler  = { line = "<leader>cc", block = "<leader>cs" },
        opleader = { line = "<leader>c",  block = "<leader>b"  },
      })
      -- Visual mode: <leader>cc to match normal mode behaviour
      vim.keymap.set("x", "<leader>cc", "<Plug>(comment_toggle_linewise_visual)")

      -- <leader>cu — uncomment only (normal + visual)
      local api = require("Comment.api")
      vim.keymap.set("n", "<leader>cu", api.uncomment.linewise.current)
      vim.keymap.set("x", "<leader>cu", function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<ESC>", true, false, true), "nx", false)
        api.uncomment.linewise(vim.fn.visualmode())
      end)
    end,
  },

  {
    "chentoast/marks.nvim",
    config = function()
      require("marks").setup()
    end,
  },

  { "christoomey/vim-tmux-navigator" },
  { "tpope/vim-repeat" },
  { "tpope/vim-unimpaired" },
}
