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

autocmd("BufWritePre", {
  group = aliyeysidesgroup,
  pattern = "*",
  callback = function()
    vim.cmd(":PrettierAsync")
  end,
})

require("lazy").setup("aliyeysides.plugins")
