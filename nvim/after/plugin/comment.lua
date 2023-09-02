local keymap = vim.keymap

keymap.set("n", "<leader>/", function()
  require('Comment.api').toggle.linewise.current()
end)
keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<CR>")
