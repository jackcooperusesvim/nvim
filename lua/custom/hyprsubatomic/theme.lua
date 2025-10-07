-- lua/mycolors/theme.lua
local M = {}

function M.apply(opts)
  opts = opts or {}

  -- Base editor colors
  vim.o.background = 'dark'

  -- Normal text
  vim.api.nvim_set_hl(0, 'Normal', { fg = '#8F93A2', bg = '#0F111A' })
  vim.api.nvim_set_hl(0, 'Visual', { bg = '#717CB4' })
  -- Comments
  vim.api.nvim_set_hl(0, 'Comment', { fg = '#42577e', italic = opts.italic_comments })

  -- Constants
  vim.api.nvim_set_hl(0, 'Constant', { fg = '#f2283c' })
  vim.api.nvim_set_hl(0, 'Number', { fg = '#875afb' })
  vim.api.nvim_set_hl(0, 'Boolean', { fg = '#f2283c' })
  vim.api.nvim_set_hl(0, 'Character', { fg = '#d72e82' })

  -- Strings
  vim.api.nvim_set_hl(0, 'String', { fg = '#f2283c' })
  vim.api.nvim_set_hl(0, 'SpecialString', { fg = '#00a1b4' })

  -- Keywords
  vim.api.nvim_set_hl(0, 'Keyword', { fg = '#00ae6b' })
  vim.api.nvim_set_hl(0, 'Statement', { fg = '#875afb' })
  vim.api.nvim_set_hl(0, 'Operator', { fg = '#277dff' })

  -- Functions
  vim.api.nvim_set_hl(0, 'Function', { fg = '#00ae6b' })
  vim.api.nvim_set_hl(0, 'Method', { fg = '#00ae6b' })

  -- Types
  vim.api.nvim_set_hl(0, 'Type', { fg = '#ff7a00' })
  vim.api.nvim_set_hl(0, 'Struct', { fg = '#ff7a00' })
  vim.api.nvim_set_hl(0, 'Identifier', { fg = '#ffc200' })

  -- Errors / Warnings / Info
  vim.api.nvim_set_hl(0, 'Error', { fg = '#f2283c', bold = true })
  vim.api.nvim_set_hl(0, 'Warning', { fg = '#ffc200' })
  vim.api.nvim_set_hl(0, 'Info', { fg = '#00a1b4' })

  -- UI elements (CursorLine, Visual selection)
  vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#000000' })
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#4B526D' })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ffc200' })

  -- Git / Diff
  vim.api.nvim_set_hl(0, 'DiffAdd', { fg = '#00ae6b' })
  vim.api.nvim_set_hl(0, 'DiffChange', { fg = '#ffc200' })
  vim.api.nvim_set_hl(0, 'DiffDelete', { fg = '#f2283c' })

  -- Terminal colors
  vim.g.terminal_ansi_colors = {
    '#000000',
    '#f2283c',
    '#00ae6b',
    '#ffc200',
    '#277dff',
    '#875afb',
    '#00a1b4',
    '#ffffff',
    '#464B5D',
    '#f2283c',
    '#00ae6b',
    '#ffc200',
    '#277dff',
    '#875afb',
    '#00a1b4',
    '#ffffff',
  }
end

return M
