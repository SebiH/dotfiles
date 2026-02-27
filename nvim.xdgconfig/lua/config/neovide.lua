if not vim.g.neovide then return end

-- Font — FiraCode Nerd Font renders sharply on Retina/4K automatically
vim.o.guifont = "FiraCode Nerd Font:h14"

-- Scale factor — adjust per machine if needed (e.g. 1.25 on non-HiDPI)
vim.g.neovide_scale_factor = 1.0

-- Cursor
vim.g.neovide_cursor_animation_length = 0.08
vim.g.neovide_cursor_trail_size = 0.5

-- Scrolling
vim.g.neovide_scroll_animation_length = 0.3

-- macOS: enable CMD key and map it for copy/paste/save
if vim.fn.has("mac") == 1 then
  vim.g.neovide_input_use_logo = true

  local map = vim.keymap.set
  map("n", "<D-s>", ":w<CR>",           { desc = "Save" })
  map("i", "<D-s>", "<Esc>:w<CR>",      { desc = "Save" })
  map("v", "<D-c>", '"+y',              { desc = "Copy" })
  map("n", "<D-v>", '"+P',              { desc = "Paste" })
  map("v", "<D-v>", '"+P',              { desc = "Paste" })
  map("i", "<D-v>", '<C-r>+',           { desc = "Paste" })
  map("c", "<D-v>", '<C-r>+',           { desc = "Paste" })
end
