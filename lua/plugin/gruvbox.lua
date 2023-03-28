return {
  'ellisonleao/gruvbox.nvim',
  opts = {
    italic = {
      strings = false,
      operators = false,
      comments = false,
    },
  },
  config = function(_, opts)
    require('gruvbox').setup(opts)
    vim.cmd('colorscheme gruvbox')
  end,
}
