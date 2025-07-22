local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

local cmp = require('cmp')
local cmp_format = lsp.cmp_format()

cmp.setup({
    formatting = cmp_format,
})

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- scroll up and down suggestions
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        -- scroll up and down the documentation window
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    }),
})

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
    map("n", "<leader>d", function()
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

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'tsserver', 'clangd', 'lua_ls', 'gopls', 'cssls', 'tailwindcss', 'emmet_ls', 'eslint' },
    handlers = {
        function(server_name)
            lspconfig[server_name].setup({})
        end,

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
                    templateExtensions = {
                        "html"
                    }
                }
            })
        end
    }
})

lsp.setup()
