local M = {}

-- default options
M.opts = {
  italic_comments = true,
}

function M.setup(opts)
  M.opts = vim.tbl_extend('force', M.opts, opts or {})
  -- immediately apply the theme after setup
  M.load()
end

function M.load()
  local theme = require 'custom.hyprsubatomic.theme'
  theme.apply(M.opts)
end

return M
