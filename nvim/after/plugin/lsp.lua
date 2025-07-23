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
    ensure_installed = { 'ts_ls', 'clangd', 'lua_ls', 'gopls', 'cssls', 'tailwindcss', 'emmet_ls', 'eslint' },
    automatic_enable = false,
})

-- Configure individual LSP servers
lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            hint = {
                enable = true
            }
        }
    }
})

lspconfig.ts_ls.setup({
    single_file_support = false,
    init_options = {
        preferences = {
            includeInlayParameterNameHints = "all"
        },
    },
})

lspconfig.gopls.setup({
    settings = {
        templateExtensions = {
            "html"
        }
    }
})

-- Setup default configuration for other servers
local servers = { 'clangd', 'cssls', 'tailwindcss', 'emmet_ls', 'eslint' }
for _, server in ipairs(servers) do
    lspconfig[server].setup({})
end

lsp.setup()
