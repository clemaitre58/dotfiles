call plug#begin('~/.vim/plugged')

"Dvorak-bépo mapping
Plug 'clemaitre58/dvorak-bepo'
"Generateur de projet YCM
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

"YCM autocompletion
Plug 'Valloric/YouCompleteMe'

"NerdTee
Plug 'scrooloose/nerdtree'


"Latex 
Plug 'lervag/vimtex'

"Goyo
Plug 'junegunn/goyo.vim'

"For Numbering
Plug 'myusuf3/numbers.vim'
call plug#end()
" show the line number in front of each line
set number
"
" " minimum number of columns to use for the line number
set numberwidth=1
"
" " toggle line numbers
noremap <silent> <F4> :NumbersToggle<CR>
inoremap <silent> <F4> <C-O>:NumbersToggle<CR>
vnoremap <silent> <F4> <ESC>:NumbersToggle<CR>gv
"
" " toggle spell checking
noremap <silent> <F7> :set spell! spelllang=fr<CR>
inoremap <silent> <F7> <C-O>:set spell! spelllang=fr<CR>
vnoremap <silent> <F7> <ESC>:set spell! spelllang=fr<CR>gv

map <F12> :NERDTreeToggle<CR>

