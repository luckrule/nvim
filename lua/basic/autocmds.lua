vim.api.nvim_create_augroup('AuGroup', {
  clear = true,
})

vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = '*',
  group = 'AuGroup',
  command = 'silent! normal! g`"',
  desc = '跳转光标'
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*/plugin/init.lua',
  group = 'AuGroup',
  command = 'source <afile> | PackerSync',
  desc = 'Packer'
})
