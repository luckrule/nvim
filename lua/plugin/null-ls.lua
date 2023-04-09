return {
  'jose-elias-alvarez/null-ls.nvim',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  opts = function()
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

    return {
      on_attach = function(client, bufnr)
        if client.supports_method('textDocument/formatting') then
          vim.api.nvim_clear_autocmds({
            group = augroup,
            buffer = bufnr,
          })
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                filter = function(formatClient)
                  return formatClient.name == 'null-ls'
                end,
                bufnr = bufnr,
              })
            end,
          })
        end
      end,
    }
  end,
}
