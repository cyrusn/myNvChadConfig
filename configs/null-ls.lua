-- custom/configs/null-ls.lua

local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  formatting.prettier,
  formatting.stylua,
  lint.flake8,
  formatting.black,  -- Python Formatter
  formatting.djlint.with({
    extra_args = function()
      return {
        "--indent",
        "2",
        "--preserve-blank-lines",
      }
    end,
  }),
  lint.shellcheck,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
