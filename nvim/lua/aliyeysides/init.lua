require("aliyeysides.remap")
require("aliyeysides.set")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- init lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local aliyeysidesgroup = augroup("aliyeysides", {})

-- Show winbar when there are 2 windows
autocmd("WinNew", {
  group = aliyeysidesgroup,
  pattern = "*",
  callback = function()
    local wincount = vim.api.nvim_list_wins()

    if #wincount == 2 then
      vim.opt.winbar = "%f"
    end
  end,
})

-- Hide winbar when there is only 1 window
autocmd("WinClosed", {
  group = aliyeysidesgroup,
  pattern = "*",
  callback = function()
    local wincount = vim.api.nvim_list_wins()

    if #wincount == 2 then
      vim.opt.winbar = ""
    end
  end,
})

-- Reset window size when Vim is resized
autocmd("VimResized", {
  group = aliyeysidesgroup,
  pattern = "*",
  callback = function()
    vim.cmd("wincmd =")
  end,
})

-- Format Python code with black on save
autocmd("bufWritePost", {
  group = aliyeysidesgroup,
  pattern = "*.py",
  command = "silent !black %",
})

require("lazy").setup("aliyeysides.plugins")
