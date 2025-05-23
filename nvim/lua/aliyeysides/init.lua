require("aliyeysides.remap")
require("aliyeysides.set")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local usercmd = vim.api.nvim_create_user_command

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

-- Format Go code using tabs
autocmd("FileType", {
    pattern = "go",
    callback = function()
        vim.opt_local.expandtab = false
        vim.opt_local.shiftwidth = 8
        vim.opt_local.tabstop = 8
        vim.opt_local.softtabstop = 8
    end
})

-- Save file on W or w
usercmd("W", "w", {})

require("lazy").setup("aliyeysides.plugins")
