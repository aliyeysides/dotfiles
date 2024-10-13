return {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup {
            columns = { "icon" },
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["<C-h>"] = false,
                ["<C-l>"] = false,
                ["<C-r>"] = "actions.refresh",
            }
        }

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end
}
