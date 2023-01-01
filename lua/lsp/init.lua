local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = {
  'jsonls',
  'bashls',
  'eslint',
  'tsserver',
  'sumneko_lua',
}

for _, lsp in ipairs(servers) do
  local success, config = pcall(require, 'lsp.config.'..lsp)
  if success then
    config.capabilities = capabilities
  else
    config = {
      capabilities = capabilities
    }
  end
  lspconfig[lsp].setup(config)
end

require('lsp.config.cmp')
