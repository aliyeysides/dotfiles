function HideFiles()
  -- hide ../ and ./
  vim.cmd [[let g:netrw_list_hide=',^\.\.\=/\=$']]
  -- hides all files generated by templ
  vim.cmd [[let g:netrw_list_hide.=',.*_templ.go']]
end

HideFiles()
