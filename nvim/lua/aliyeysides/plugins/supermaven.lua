return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      ignore_filetypes = { c = true },
      keymaps = {
        accept_suggestion = "<C-s>",
        accept_word = "<C-d>",
      }
    })
  end,
}
