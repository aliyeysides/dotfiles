local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

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

require('mason-lspconfig').setup({
  handlers = {
    lua_ls = function()
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            hint = {
              enable = true
            }
          }
        }
      })
    end,

    tsserver = function()
      lspconfig.tsserver.setup({
        single_file_support = false,

        init_options = {
          preferences = {
            includeInlayParameterNameHints = "all"
          },
        },
      })
    end,

    gopls = function()
      lspconfig.gopls.setup({
        settings = {
          gofumpt = true,
          templateExtensions = {
            "html"
          }
        }
      })
    end
  }
})

lsp.setup()
