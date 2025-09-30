local function get_colorscheme_config(plugin)
  local name = plugin.name or plugin[1]:match '.*/(.*)%.nvim' or plugin[1]:match '.*/(.*)'
  return function()
    if name then
      vim.cmd('colorscheme ' .. name)
      -- print('Colorscheme set to: ' .. name)
    else
      vim.cmd 'colorscheme tokyonight'
    end
  end
end

local omarchy_color_config = require 'custom.theme_colors'
omarchy_color_config = omarchy_color_config[1]
omarchy_color_config.config = get_colorscheme_config(omarchy_color_config)

return { omarchy_color_config }
