local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Restore cursor to last known position when reopening a file
autocmd("BufReadPost", {
  group = augroup("restore_cursor", { clear = true }),
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

-- Force markdown filetype on .md files
autocmd({ "BufNewFile", "BufReadPost" }, {
  group = augroup("markdown_ft", { clear = true }),
  pattern = "*.md",
  callback = function()
    vim.bo.filetype = "markdown"
  end,
})
