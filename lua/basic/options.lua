vim.g.mapleader = ' '

vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.background = 'dark'
vim.opt.backspace = {
  'eol',
  'start',
  'indent',
}
vim.opt.backup = false
vim.opt.belloff = 'all'
vim.opt.browsedir = 'last'
vim.opt.cmdheight = 1
vim.opt.cmdwinheight = 8
vim.opt.copyindent = true
vim.opt.expandtab = true
vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings:append({
  'gbk',
  'cp936',
  'gb18030',
  'gb2312',
})
vim.opt.gdefault = true
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.magic = true
vim.opt.matchpairs:append({
  '<:>',
})
vim.opt.matchtime = 2
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.shortmess:append({
  w = true,
  m = true,
  c = true,
})
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.showmode = true
vim.opt.signcolumn = 'number'
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 1
vim.opt.splitright = true
vim.opt.statusline = [[%(%f%r%m%)%=%(%y %l/%L:%v%)]]
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.tagbsearch = true
vim.opt.termguicolors = true
vim.opt.timeout = false
vim.opt.undofile = true
vim.opt.wildmenu = true
