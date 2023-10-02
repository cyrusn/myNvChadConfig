local plugins = {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true },
      panel = { enabled = true },
    },
  },
  {
    "ggandor/flit.nvim",
    lazy = false,
    config = function()
      require("flit").setup {}
    end,
    dependencies = {
      "ggandor/leap.nvim",
      "tpope/vim-repeat",
    },
  },
  {
    "ggandor/leap.nvim",
    config = function()
      require("leap").add_default_mappings()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("notify").setup()
    end,
    opts = {
      ensure_installed = {
        "css-lsp",
        "html-lsp",
        "lua-language-server",
        "prettier",
        "stylua",
        "typescript-language-server",
      },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      cmdline = {
        view = "cmdline",
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = {
      render = "wrapped-compact",
      max_width = 50,
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = {
      renderer = {
        highlight_git = true,
        indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            git = true,
          },
        },
      },
      git = {
        enable = true,
        ignore = false,
      },
    },
  },
}

return plugins
