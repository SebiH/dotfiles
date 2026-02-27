return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = { { "<leader>z", ":ZenMode<CR>", desc = "Toggle zen mode" } },
    dependencies = { "junegunn/limelight.vim" },
    config = function()
      require("zen-mode").setup({
        window = {
          width = 80,
          options = {
            number = true,
            wrap = true,
            linebreak = true,
          },
        },
        on_open = function() vim.cmd("Limelight") end,
        on_close = function() vim.cmd("Limelight!") end,
      })
    end,
  },

  {
    "junegunn/limelight.vim",
    cmd = "Limelight",
    config = function()
      vim.g.limelight_default_coefficient = 0.8
    end,
  },

  {
    "reedes/vim-textobj-quote",
    ft = { "markdown", "text" },
    dependencies = { "kana/vim-textobj-user" },
  },
}
