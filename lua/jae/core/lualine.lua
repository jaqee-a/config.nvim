local M = {}

local components = require "jae.core.components"

local style = {
  style = "default",
  options = {
    theme = "auto",
    globalstatus = true,
    icons_enabled = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha" },
  },
  sections = {
    lualine_a = {
      components.mode,
    },
    lualine_b = {
      components.branch,
    },
    lualine_c = {
      components.diff
    },
    lualine_x = {
      components.diagnostics,
      components.lsp,
      components.filetype,
    },
    lualine_y = {
	  components.location
	},
    lualine_z = {
      components.progress,
    },
  },
  inactive_sections = {
    lualine_a = {
      components.mode,
    },
    lualine_b = {
      components.branch,
    },
    lualine_c = {
      components.diff
    },
    lualine_x = {
      components.diagnostics,
      components.lsp,
      components.filetype,
    },
    lualine_y = {
	  components.location
	},
    lualine_z = {
      components.progress,
    },
  },
  tabline = {},
  extensions = {},
}

M.setup = function()
  local status_ok, lualine = pcall(require, "lualine")
  if not status_ok then
    return
  end

  lualine.setup(style)
end

return M
