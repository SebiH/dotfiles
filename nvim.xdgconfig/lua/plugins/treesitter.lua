return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()
      -- lua, vim, vimdoc, markdown, markdown_inline ship with Neovim
      require("nvim-treesitter").install({
        "bash", "json", "julia", "python", "r", "toml", "yaml",
      })
    end,
  },
}
