return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup({
      signcolumn = false,
      numhl = true,
      current_line_blame = true,
    })
  end
}
