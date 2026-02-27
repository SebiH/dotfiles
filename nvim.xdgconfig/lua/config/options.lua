local opt = vim.opt

opt.number = true
opt.signcolumn = "yes"
opt.scrolloff = 5
opt.wrap = true
opt.showmode = true
opt.showcmd = true
opt.termguicolors = true
opt.laststatus = 3
opt.inccommand = "split"

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true
opt.autoindent = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.gdefault = true

opt.swapfile = false
opt.backup = false

opt.wildmenu = true
opt.wildmode = "list:longest,full"

opt.splitright = true
opt.splitbelow = true

opt.updatetime = 250

-- Expand %% to directory of current buffer in command mode
vim.cmd("cabbr <expr> %% expand('%:p:h')")

-- Disable unused remote-plugin providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
