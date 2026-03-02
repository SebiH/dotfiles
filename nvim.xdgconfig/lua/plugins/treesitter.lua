return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      -- lua, vim, vimdoc, markdown, markdown_inline ship with Neovim
      require("nvim-treesitter").setup({
        ensure_installed = { "bash", "json", "python", "toml", "yaml" },
      })
    end,
  },
}
