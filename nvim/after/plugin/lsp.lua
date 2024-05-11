local lsp = require("lsp-zero").preset({})
local map = vim.keymap.set

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })

  -- show code action suggestions
  map("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
  end)

  -- open floating diagnostics window
  map("n", "<leader>f", function()
    vim.diagnostic.open_float()
  end)

  -- open diagnostics
  map("n", "<leader>q", function()
    vim.diagnostic.setloclist()
  end)

  -- format
  map("n", "<leader>fm", function()
    vim.lsp.buf.format({ async = true })
  end)

  -- go to definition
  map("n", "<leader>gd", function()
    vim.lsp.buf.definition()
  end)
end)

lsp.setup()
