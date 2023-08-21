function SetColors(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)
  vim.g.rose_pine_variant = "moon"
  vim.g.rose_pine_disable_background = true
  vim.g.rose_pine_disable_italics = true
  vim.g.rose_pine_disable_eob = true
  vim.g.rose_pine_background = "transparent"
  vim.g.rose_pine_borders = true
  -- configure opacity of background
  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  vim.cmd("highlight SignColumn guibg=NONE")
end

SetColors()
