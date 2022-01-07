map <leader>to :tabnew<cr>
map <leader>tx :tabclose<cr>
map <leader>tn :tabnext<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/
map <silent> <leader><cr> :noh<cr>

noremap ; :
noremap Q :q<CR>
noremap U <C-r>
noremap <C-q> :qa<CR>
noremap \s :%s//g<left><left>
