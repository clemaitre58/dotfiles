call plug#begin('~/.vim/plugged')

"Dvorak-bépo mapping
Plug 'clemaitre58/dvorak-bepo'

"Generateur de projet YCM
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

"YCM autocompletion
Plug 'Valloric/YouCompleteMe'

"NerdTee
Plug 'scrooloose/nerdtree'

"NERD Commenter to comment many lines
Plug 'scrooloose/nerdcommenter'

"Latex 
"Plug 'lervag/vimtex'

"Goyo
Plug 'junegunn/goyo.vim'

"Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

"Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Exploration status Git
Plug 'tpope/vim-fugitive'

"Python tools syntaxe, pep 8
Plug 'nvie/vim-flake8'

"For Numbering
Plug 'myusuf3/numbers.vim'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Supertab
Plug 'ervandew/supertab'

call plug#end()
" Dossier swapfile
:set directory=$HOME/.vim/swapfiles//

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

autocmd FileType python map <buffer> <F3> :call Flake8()<CR>

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let python_highlight_all=1
syntax on 

" Thème status bar
set laststatus=2
let g:airline_powerline_fonts = 1

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
" toggle spell checking
noremap <silent> <F7> :set spell! spelllang=fr<CR>
inoremap <silent> <F7> <C-O>:set spell! spelllang=fr<CR>
vnoremap <silent> <F7> <ESC>:set spell! spelllang=fr<CR>gv
"Nerdtree sur F12
map <F12> :NERDTreeToggle<CR>

"Touche leader sur Espace
let mapleader = "\<Space>"

" leader G to Go to definition
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
