return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    plugins = { spelling = true },
  },
  config = function(_, opts)
    local wk = require('which-key')
    wk.setup(opts)
    local keymaps = {
      mode = {
        'n',
        'v',
      },
      ['g'] = { name = '+跳转' },
      ['['] = { name = '+上一个' },
      [']'] = { name = '+下一个' },
      ['<leader><tab>'] = { name = '+标签' },
      ['<leader>b'] = { name = '+缓冲区' },
      ['<leader>c'] = { name = '+代码' },
      ['<leader>f'] = { name = '+文件/查找' },
      ['<leader>g'] = { name = '+git' },
      ['<leader>q'] = { name = '+退出' },
      ['<leader>s'] = { name = '+搜索' },
      ['<leader>w'] = { name = '+窗口' },
      ['<leader>x'] = { name = '+诊断' },
    }
    wk.register(keymaps)
  end,
}
