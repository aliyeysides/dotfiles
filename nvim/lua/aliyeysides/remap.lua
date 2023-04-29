local g = vim.g
local keymap = vim.keymap

g.mapleader = " "

-- opens netrw
keymap.set("n", "<leader>e", vim.cmd.Ex)

-- navigate within insert mode
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")

-- switch between windows 
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")

-- go to beginning and end
keymap.set("i", "<C-b>", "<ESC>^i")
keymap.set("i", "<C-e>", "<End>")

-- remove highlight with ESC
keymap.set("n", "<ESC>", "<cmd> noh <CR>")

-- delete without updating registry
keymap.set("n", "<leader>d", "\"_d")
keymap.set("n", "<leader>c", "\"_c")
keymap.set("v", "<leader>d", "\"_d")
keymap.set("v", "<leader>p", "\"_dP")

-- move highlighted lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- replace word on cursor
keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")
