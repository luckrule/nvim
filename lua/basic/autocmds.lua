local augroup = vim.api.nvim_create_augroup('BasicAuGroup', {
  clear = true,
})

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  group = augroup,
  callback = function()
    if vim.fn.match(vim.bo.filetype, '\\v\\ccommit|rebase') == -1 then
      local mark = vim.api.nvim_buf_get_mark(0, '"')
      local lcount = vim.api.nvim_buf_line_count(0)
      if mark[1] > 0 and mark[1] <= lcount then
        pcall(vim.api.nvim_win_set_cursor, 0, mark)
      end
    end
  end,
  once = true,
  desc = '打开文件自动跳转上次光标位置',
})
