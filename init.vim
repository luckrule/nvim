set autowrite "自动保存
set background=dark "深色背景
set belloff=all "禁用响铃
set copyindent "自动缩进结构
set expandtab "使用空格替换Tab
set hidden "跳转时隐藏缓存区
set matchtime=2 "跳转到匹配符号的时间
set ignorecase "搜索模式忽略大小写
set relativenumber "显示相对行号
set scrolloff=10 "光标上下两侧保留的屏幕行数
set shiftwidth=2 "缩进每一步都空白数
set shortmess+=c "精简信息
set showcmd "显示命令
set showmatch "跳转到匹配括号
set signcolumn=number "始终显示标志列
set smartcase "智能搜索模式
set smartindent "智能缩进模式
set softtabstop=2 "编辑操作时Tab算做的空格数
set splitright "分割窗口时放在当前右侧
set swapfile! "关闭交换文件
set statusline=%(%f%r%m%)%=%(%y\ %l/%L:%v%) "状态栏
set tabstop=2 "Tab代表的空格数
set termguicolors "真彩终端
set timeout! "关闭命令输入超时
set undofile "保存撤销历史
set updatetime=100 "刷新交换文件的时间

"自动跳转上次光标位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

"leader
let mapleader = " "

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/maps.vim
