local g = vim.g
local map = vim.keymap.set

g.mapleader = " "

-- opens netrw
map("n", "<leader>e", "<CMD>Oil<CR>")

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
map("n", "<C-d>", "<C-d>")
map("n", "<C-u>", "<C-u>")

-- center search terms
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- replace word on cursor
map("n", "<leader>S", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- disable Q key
map("n", "Q", "<nop>")

-- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
-- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- empty mode is same as using <cmd> :map
-- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour-- Function to determine movement direction
local function move(direction, g_direction)
  return function()
    if vim.v.count == 0 and vim.fn.mode(1):sub(1, 2) == "no" then
      return direction
    else
      return g_direction
    end
  end
end

-- Move down with 'j' or '<Down>'
map('', 'j', move('j', 'gj'), { expr = true })
map('', '<Down>', move('j', 'gj'), { expr = true })

-- Move up with 'k' or '<Up>'
map('', 'k', move('k', 'gk'), { expr = true })
map('', '<Up>', move('k', 'gk'), { expr = true })

map('n', '<leader>h', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end)
