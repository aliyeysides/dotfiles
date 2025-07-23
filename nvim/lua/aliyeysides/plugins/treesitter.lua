return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = function()
    pcall(vim.cmd, "TSUpdate")
  end,
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
}
