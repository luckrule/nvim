function map(mode, to, from, opts)
  vim.keymap.set(mode, to, from, opts or {})
end

-- 基础
map(
  { 'i', 'n' },
  '<ESC>',
  '<CMD>noh<CR><ESC>',
  { desc = 'Esc以及取消高亮搜索 ' }
)
map({ 'n', 'x' }, '\\w', '*N', { desc = '搜索光标下的单词' })
map(
  { 'i', 'v', 'n', 's' },
  '<C-s>',
  '<CMD>w<CR><ESC>',
  { desc = '保存文件' }
)
map('n', '<LEADER>fn', '<CMD>enew<CR>', { desc = '新文件' })
map('n', '<LEADER>qq', '<CMD>qa<CR>', { desc = '退出全部' })
map('n', 'Q', '<CMD>q<CR>', { desc = '关闭文件' })
map('n', 'U', '<C-r>', { desc = '重做' })

-- 移动行
map('n', '<A-j>', '<CMD>m .+1<CR>==', { desc = '向下移动行' })
map('n', '<A-k>', '<CMD>m .-2<CR>==', { desc = '向上移动行' })
map('i', '<A-j>', '<ESC><CMD>m .+1<CR>==gi', { desc = '向下移动行' })
map('i', '<A-k>', '<ESC><CMD>m .-2<CR>==gi', { desc = '向上移动行' })
map('v', '<A-j>', ':m \'>+1<CR>gv=gv', { desc = '向下移动行' })
map('v', '<A-k>', ':m \'<-2<CR>gv=gv', { desc = '向上移动行' })

-- 缓存区
map('n', '<LEADER>bl', '<CMD>bprevious<CR>', { desc = '上一个缓冲区' })
map('n', '<LEADER>bh', '<CMD>bnext<CR>', { desc = '下一个缓冲区' })
map('n', '<LEADER>bb', '<CMD>e #<CR>', { desc = '切换到另一个缓冲区' })

-- 窗口
map('n', '<LEADER>ww', '<C-W>p', { desc = '切换窗口' })
map('n', '<LEADER>wd', '<C-W>c', { desc = '关闭窗口' })
map('n', '<LEADER>w-', '<C-W>s', { desc = '水平分割窗口' })
map('n', '<LEADER>w|', '<C-W>v', { desc = '垂直分割窗口' })
map('n', '<LEADER>-', '<C-W>s', { desc = '水平分割窗口' })
map('n', '<LEADER>|', '<C-W>v', { desc = '垂直分割窗口' })
map('n', '<C-h>', '<C-w>h', { desc = '切换至左侧窗口' })
map('n', '<C-j>', '<C-w>j', { desc = '切换至下方窗口' })
map('n', '<C-k>', '<C-w>k', { desc = '切换至上方窗口' })
map('n', '<C-l>', '<C-w>l', { desc = '切换至右侧窗口' })
map('n', '<LEADER>wh', '<LEADER>ww>h', { desc = '切换至左侧窗口' })
map('n', '<LEADER>wj', '<LEADER>ww>j', { desc = '切换至下方窗口' })
map('n', '<LEADER>wk', '<LEADER>ww>k', { desc = '切换至上方窗口' })
map('n', '<LEADER>wl', '<LEADER>ww>l', { desc = '切换至右侧窗口' })

-- 标签页
map(
  'n',
  '<LEADER><TAB>l',
  '<CMD>tablast<CR>',
  { desc = '最后一个标签页' }
)
map('n', '<LEADER><TAB>f', '<CMD>tabfirst<CR>', { desc = '第一个标签页' })
map('n', '<LEADER><TAB><TAB>', '<CMD>tabnew<CR>', { desc = '新标签页' })
map('n', '<LEADER><TAB>]', '<CMD>tabnext<CR>', { desc = '下一个标签页' })
map('n', '<LEADER><TAB>d', '<CMD>tabclose<CR>', { desc = '关闭标签页' })
map(
  'n',
  '<LEADER><TAB>[',
  '<CMD>tabprevious<CR>',
  { desc = '上一个标签页' }
)
