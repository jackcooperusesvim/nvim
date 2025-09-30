return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
    config = function()
      require('oil').setup {
        default_file_explorer = false,
      }
      vim.api.nvim_create_user_command('CD', function()
        local dir = vim.b.netrw_curdir
        if dir then
          vim.cmd('cd ' .. dir)
          print('new dir: ' .. dir)
          return
        end

        local oil = require 'oil'
        dir = oil.get_current_dir()
        if dir then
          vim.cmd('cd ' .. dir)
          print('new dir: ' .. dir)
        end
      end, {})
    end,
  },
}
