return {
  'jay-babu/mason-nvim-dap.nvim',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  dependencies = {
    'williamboman/mason.nvim',
    'mfussenegger/nvim-dap',
  },
  opts = {
    ensure_installed = {
      'js-debug-adapter',
    },
    automatic_setup = true,
    handlers = {},
  },
  config = function(_, opts)
    require('mason-nvim-dap').setup(opts)
  end,
}
