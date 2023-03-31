return {
  'williamboman/mason.nvim',
  lazy = true,
  build = ':MasonUpdate',
  keys = {
    {
      '<leader>cm',
      '<cmd>Mason<cr>',
      desc = 'Mason',
    },
  },
  config = true,
}
