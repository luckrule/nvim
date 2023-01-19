vim.api.nvim_create_augroup('AuGroup', {
  clear = true,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  group = 'AuGroup',
  callback = function()
    if vim.fn.match(vim.bo.filetype, '\\v\\ccommit|rebase') == -1 then
      local cousor = vim.api.nvim_win_get_cursor(0)
      local count = vim.api.nvim_buf_line_count(0)
      if cousor[1] > 0 and cousor[1] < count then
        vim.cmd('silent! normal! g`"')
      end
    end
  end,
  once = true,
  desc = '打开文件自动跳转上次光标位置'
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*/plugin/init.lua',
  group = 'AuGroup',
  command = 'source <afile> | PackerSync',
  desc = 'Packer自动安装'
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = {
    '*.js',
    '*.ts'
  },
  group = 'AuGroup',
  command = 'silent! EslintFixAll',
  desc = 'js、ts文件保存时自动使用eslint修复'
})
