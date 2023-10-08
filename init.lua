-- GotoTab
for i = 1, 9, 1 do
  vim.keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end

-- Custom Settings
vim.o.cmdheight = 1
vim.wo.relativenumber = true
vim.wo.wrap = false
