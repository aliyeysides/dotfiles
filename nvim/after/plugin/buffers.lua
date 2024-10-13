function SwapBuffers()
  local b1 = vim.fn.winbufnr(1)
  local b2 = vim.fn.winbufnr(2)

  vim.cmd('buffer ' .. b1)
  vim.cmd('wincmd w')
  vim.cmd('buffer ' .. b2)
end

vim.api.nvim_set_keymap('n', '<leader>b', ':lua SwapBuffers()<CR>', { noremap = true, silent = true })
