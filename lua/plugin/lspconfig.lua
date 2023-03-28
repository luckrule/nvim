return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    lspconfig.util.default_config =
      vim.tbl_extend('force', lspconfig.util.default_config, {
        capabilities = capabilities,
      })
  end,
}
