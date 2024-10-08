local cmp = require('cmp')

cmp.setup({
    mapping = {
        ['<TAB>'] = cmp.mapping.confirm({ select = true }),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }
})
