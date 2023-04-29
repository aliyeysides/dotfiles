local M = {}

M.definitions = {
  n = {
    ["<leader>d"] = {
      "\"_d",
      "Delete without updating registry",
    },
    ["<leader>c"] = {
      "\"_c",
      "Change without updating registry",
    },
  },

  v = {
    ["<leader>d"] = {
      "\"_d",
      "Delete selected text without updating registry",
    },
    ["<leader>p"] = {
      "\"_dP",
      "Delete selected text and paste without updating registry",
    },
  }
}

return M
