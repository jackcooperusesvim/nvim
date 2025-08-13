function ColorMyPencils(color)
  color = color or 'bamboo'
  vim.cmd.colorscheme(color)

  -- Define your custom highlight groups

  -- vim.api.nvim_set_hl(0, 'NormalFloat', { italic = true, blend = 0, bg = '#000000' })
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE', ctermbg = 'NONE' })

  vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' }) -- Main editor area
  vim.api.nvim_set_hl(0, 'VertSplit', { bg = '#252623' }) -- Vertical splits
  vim.api.nvim_set_hl(0, 'HSplit', { bg = '#252623' }) -- Vertical splits
  vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'NONE' }) -- Status line
  vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'NONE' }) -- Popup menu
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' }) -- Floating windows

  -- vim.api.nvim_set_hl(0, 'Normal', { bg = '#252623' }) -- Set solid background for focused window

  vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'NONE' })

  vim.api.nvim_set_hl(0, 'NormalFloat', { italic = true, blend = 0, link = 'Normal' })

  vim.api.nvim_set_hl(0, 'TelescopePromptNormal', { bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'TelescopeResultsNormal', { bg = 'NONE' })
  vim.api.nvim_set_hl(0, 'TelescopePreviewNormal', { bg = 'NONE' }) -- bg = '#252623'
end

return {
  {
    'ribru17/bamboo.nvim',
    config = function()
      require('bamboo').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = 'multiplex',
        transparent = false, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        code_style = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = false },
          keywords = { italic = false },
          -- Background styles. Can be "dark", "transparent" or "normal"
          -- sidebars = 'dark', -- style for sidebars, see below
          -- floats = 'dark', -- style for floating windows
        },
      }
      ColorMyPencils()
    end,
  },

  {
    'ellisonleao/gruvbox',
    name = 'gruvbox',
    config = function()
      require('gruvbox').setup {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = false,
        bold = true,
        italic = {
          strings = false,
          emphasis = false,
          comments = false,
          operators = false,
          folds = false,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = '', -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
      }
    end,
  },
}
