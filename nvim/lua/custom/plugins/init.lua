return {
  ["ibhagwan/fzf-lua"] = {
    requires = { "nvim-tree/nvim-web-devicons" },
  },

  ["github/copilot.vim"] = {},

  ["iamcco/markdown-preview.nvim"] = {
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
    setup = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = function()
      local opts = require "custom.plugins.nvim-tree"
      return opts
    end,
  },

  ["NvChad/nvterm"] = {
    override_options = function()
      local opts = require "custom.plugins.nvterm"
      return opts
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["williamboman/mason.nvim"] = {
    override_options = function()
      local opts = require "custom.plugins.mason"
      return opts
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["windwp/nvim-autopairs"] = {
    override_options = {
      check_ts = true,
    },
  },
}
