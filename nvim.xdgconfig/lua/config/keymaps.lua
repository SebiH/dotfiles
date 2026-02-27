local map = vim.keymap.set

map({ "n", "v" }, "<space>", ":")

map("n", "j", "gj")
map("n", "k", "gk")

map({ "i", "n", "v" }, "<F1>", "<Esc>")
map("n", "<F2>", ":set invpaste paste?<CR>")

-- Insert current date (YYYY-MM-DD)
map("n", "<F6>", function()
  vim.api.nvim_put({ vim.fn.strftime("%Y-%m-%d") }, "c", false, true)
end)
map("i", "<F6>", function()
  return vim.fn.strftime("%Y-%m-%d")
end, { expr = true })

map("t", "<Esc>", "<C-\\><C-n>")

-- Search with very magic mode (sane regex)
map({ "n", "v" }, "/", "/\\v")

map({ "n", "v" }, "<tab>", "%")
map("n", "<leader><space>", ":noh<CR>", { silent = true })

-- File tree
map("n", "<leader>T", ":NvimTreeToggle<CR>", { silent = true })
map("n", "<leader>t", ":NvimTreeFocus<CR>", { silent = true })

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", { silent = true })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { silent = true })
map("n", "<leader>fb", ":Telescope buffers<CR>", { silent = true })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { silent = true })

-- Git
map("n", "<leader>gs", ":Git<CR>")
map("n", "<leader>gc", ":Git commit<CR>")
map("n", "<leader>ga", ":Gwrite<CR>")
map("n", "<leader>gd", ":Gdiff<CR>")
