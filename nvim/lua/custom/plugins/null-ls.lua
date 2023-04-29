local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev
  b.formatting.prettier,
  b.formatting.fixjson,

  -- Go
  b.formatting.gofumpt,
  b.diagnostics.revive,

  -- Python
  b.formatting.black,
  b.diagnostics.mypy,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.zsh,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
