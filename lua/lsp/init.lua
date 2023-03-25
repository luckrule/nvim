local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.util.default_config =
  vim.tbl_extend('force', lspconfig.util.default_config, {
    capabilities = capabilities,
  })

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'jsonls',
    'yamlls',
    'bashls',
    'eslint',
    'tsserver',
  },
  automatic_installation = true,
})
require('mason-lspconfig').setup_handlers({
  function(serverName)
    local _, config = pcall(require, 'lsp.config.' .. serverName)
    lspconfig[serverName].setup(config)
  end,
})

require('lsp.config.cmp')
require('lsp.config.null_ls')
require('lsp.config.luasnip')
