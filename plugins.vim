"初次自动载入插件
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://ghproxy.com/https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Plug
call plug#begin('~/.config/nvim/plugins')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

"gruvbox
autocmd vimenter * ++nested colorscheme gruvbox

"coc.nvim
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-yaml', 'coc-eslint', 'coc-pairs', 'coc-prettier']
vmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> <leader><up> <Plug>(coc-diagnostic-prev)
nmap <silent> <leader><down> <Plug>(coc-diagnostic-next)
nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"
nnoremap <silent> <leader>h:call <SID>show_documentation()<cr>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"fzf
noremap <silent> <c-f> :Files<cr>
noremap <silent> <c-b> :Buffers<cr>
noremap <silent> <c-a> :Ag<cr>
noremap <silent> <c-h> :History<cr>
noremap <leader>: :History:<CR>
