local lsp = require('lsp-zero').preset({})
local keymap = vim.keymap

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })

  -- show code action suggestions
  keymap.set("n", "<leader>ca", function()
    vim.lsp.buf.code_action()
  end)

  -- open floating diagnostics window
  keymap.set("n", "<leader>f", function()
    vim.diagnostic.open_float()
  end)

  -- open diagnostics
  keymap.set("n", "<leader>q", function()
    vim.diagnostic.setloclist()
  end)

  -- format
  keymap.set("n", "<leader>fm", function()
    vim.lsp.buf.format { async = true }
  end)
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
