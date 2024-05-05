require('rose-pine').setup({
  enable = {
    terminal = true
  },
  styles = {
    bold = true,
    italic = false,
    transparency = true
  },
})

function SetColors(color)
  color = color or "rose-pine-moon"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })

  vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })

  vim.api.nvim_set_hl(0, "WinBar", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "WinBarNC", { bg = "NONE" })
end

SetColors()
