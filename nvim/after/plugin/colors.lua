require('rose-pine').setup({
  disable_italics = true,
  styles = {
    bold = true,
    italic = false,
  },
  disable_background = true,
})

function SetColors(color)
  color = color or "rose-pine-moon"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })

  vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
end

SetColors()
