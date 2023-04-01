return {
  'jay-babu/mason-null-ls.nvim',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  dependencies = {
    'williamboman/mason.nvim',
    'jose-elias-alvarez/null-ls.nvim',
  },
  opts = {
    ensure_installed = {
      'stylua',
      'eslint_d',
      'prettierd',
    },
    automatic_setup = true,
    handlers = {},
  },
  config = function(_, opts)
    require('mason-null-ls').setup(opts)
  end,
}
