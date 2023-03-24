local null_ls = require('null-ls')
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'jsonls',
    'bashls',
    'eslint',
    'tsserver',
  },
  automatic_installation = true,
})

require('mason-lspconfig').setup_handlers {
  function(serverName)
  local _, config = pcall(require, 'lsp.config.' .. serverName)
    lspconfig[serverName].setup(config)
  end,
}

require('lsp.config.cmp')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.eslint_d,
    null_ls.builtins.code_actions.eslint_d,
    null_ls.builtins.diagnostics.eslint_d,
  },
  on_attach = function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({ group = 'AuGroup', buffer = bufnr })
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = 'AuGroup',
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})
