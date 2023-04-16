return {
  'NvChad/nvim-colorizer.lua',
  opts = {
    user_default_options = {
      css = true,
      css_fn = true,
      tailwind = true,
    },
  },
  config = function(_, opts)
    require('colorizer').setup(opts)
  end,
}
