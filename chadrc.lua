--@ type ChadrcConfig
local M = {}

local function stbufnr()
  return vim.api.nvim_win_get_buf(vim.g.statusline_winid)
end

M.ui = {
  theme = "catppuccin",
  statusline = {
    theme = "default",
    -- theme = "minimal",
    overriden_modules = function(modules)
      local status = (function()
        -- return 'hello'
        local status = require("noice").api.status
        local mode_cond = status.mode.has()
        local command_cond = status.command.has()

        local mode_msg = mode_cond and status.mode.get_hl() .. " " or ""
        local command_msg = command_cond and status.command.get_hl() .. " " or ""

        return "- " .. mode_msg .. command_msg .. "-"
      end)()

      local fileType = (function()
        local ft = vim.bo[stbufnr()].ft
        return ft == "" and "· plain text " or "{" .. ft .. "} "
      end)()

      table.insert(modules, 7, status)
      table.insert(modules, 11, fileType)

      return modules
    end,
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
