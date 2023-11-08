local g = vim.g
local map = vim.keymap.set

g.mapleader = " "

-- opens netrw
map("n", "<leader>e", vim.cmd.Ex)

-- navigate within insert mode
map("i", "<C-h>", "<Left>")
map("i", "<C-l>", "<Right>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")

-- switch between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- go to beginning and end
map("i", "<C-b>", "<ESC>^i")
map("i", "<C-e>", "<End>")

-- remove highlight with ESC
map("n", "<ESC>", "<cmd> noh <CR>")

-- delete without updating registry
map("n", "<leader>d", "\"_d")
map("n", "<leader>c", "\"_c")
map("n", "<leader>C", "\"_C")
map("v", "<leader>d", "\"_d")
map("v", "<leader>p", "\"_dP")

-- move highlighted lines
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- center after navigation
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- center search terms
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- replace word on cursor
map("n", "<leader>S", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- disable Q key
map("n", "Q", "<nop>")
