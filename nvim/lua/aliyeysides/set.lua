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
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.hlsearch = true
opt.incsearch = true

opt.termguicolors = true
opt.background = "dark"

opt.statusline = "%0.50F%m %=%{FugitiveStatusline()} %y %l/%L %p%%"

opt.hidden = false

opt.winbar = "%f"
