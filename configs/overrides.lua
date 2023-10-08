local M = {}

M.mason = {
  ensure_installed = {
    "css-lsp",
    "html-lsp",
    "lua-language-server",
    "prettier",
    "stylua",
    "typescript-language-server",
  },
}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
  },
}

M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },

  renderer = {
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
    -- icons = {
    --   show = {
    --     git = true,
    --   },
    -- },
  },
}

return M
