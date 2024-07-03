return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<C-d>",
        accept_word = "<C-s>",
      }
    })
  end,
}
