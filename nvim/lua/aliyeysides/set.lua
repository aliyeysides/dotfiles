local opt = vim.opt

opt.clipboard = "unnamed"

opt.foldmethod = "indent"
opt.foldlevel = 99

opt.rnu = true
opt.number = true

opt.scrolloff = 8
opt.wrap = true

opt.laststatus = 3

opt.signcolumn = "yes"

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true
opt.background = "dark"

opt.statusline = "%0.50F%m %= %y %l/%L %p%%"

