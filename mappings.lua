local M = {}

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
    ["<c-j>"] = { ":m '>+1<CR>gv=gv", "Move current line down" },
    ["<c-k>"] = { ":m '<-2<CR>gv=gv", "Move current line down" },
  },
}

M.buffer = {
  n = {
    ["<leader>X"] = {
      function()
        require("nvchad.tabufline").closeAllBufs()
      end,
      "Close all buffers",
    },
  },
}

return M
