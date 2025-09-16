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
}
