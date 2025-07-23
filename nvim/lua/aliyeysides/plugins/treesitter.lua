return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
}
