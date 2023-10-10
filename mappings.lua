local M = {}

M.remap = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "Move half page down" },
    ["<C-u>"] = { "<C-u>zz", "Move half page up" },
    ["<C-s>"] = {
      function()
        vim.lsp.buf.format { async = true }
        vim.api.nvim_command "write"
      end,
      "Format and save",
    },
  },
}

M.mason = {
  n = {
    ["<leader>ms"] = { ":Mason <CR>", "Mason" },
  },
}

M.notify = {
  n = {
    ["<leader>fn"] = { ":Telescope notify<CR>", "Find notifications" },
  },
}

M.movelines = {
  n = {
    ["<A-k>"] = { ":m .-2 <CR>", "Move current line up" },
    ["<A-j>"] = { ":m .+1 <CR>", "Move current line down" },
  },
  i = {
    ["<A-k>"] = { "<Esc>:m .-2<CR>==gi", "Move current line down" },
    ["<A-j>"] = { "<Esc>:m .+1<CR>==gi", "Move current line up" },
  },
  v = {
    ["<A-k>"] = { ":m '<-2<CR>gv=gv", "Move current line down" },
    ["<A-j>"] = { ":m '>+1<CR>gv=gv", "Move current line down" },
  },
}

M.buffer = {
  n = {
    ["<leader>X"] = {
      ":w | %bd | e# | NvimTreeFocus <CR> ",
      "Close all buffers",
    },
  },
}

M.update = {
  n = {
    ["<leader>u"] = { ":NvChadUpdate<CR>", "Update NvChad" },
  },
}

return M
