require('lspconfig').gopls.setup({
  settings = {
    gofumpt = true,
    templateExtensions = {
      "html"
    }
  }
})
