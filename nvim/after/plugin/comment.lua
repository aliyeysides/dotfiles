local map = vim.keymap.set

map("n", "<leader>/", function()
  require('Comment.api').toggle.linewise.current()
end)
map("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<CR>")
