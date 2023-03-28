vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

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
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.copyindent = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings:append({
  'gb18030',
  'gb2312',
  'gbk',
  'cp936',
})
vim.opt.formatoptions = 'jcroqlnt'
vim.opt.gdefault = true
vim.opt.grepformat = '%f:%l:%c:%m'
vim.opt.grepprg = 'rg --vimgrep'
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.inccommand = 'nosplit'
vim.opt.magic = true
vim.opt.matchpairs:append({
  '<:>',
})
vim.opt.matchtime = 2
vim.opt.pumblend = 10
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.shiftwidth = 2
vim.opt.shortmess:append({
  c = true,
  m = true,
  w = true,
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
vim.opt.timeout = true
vim.opt.timeoutlen = 300
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 200
vim.opt.wildmenu = true
vim.opt.wildmode = 'longest:full,full'
vim.opt.wrap = true
