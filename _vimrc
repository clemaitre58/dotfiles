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

"Check on fly
Plug 'vim-syntastic/syntastic'

"python-mode for Vim like an IDE
Plug 'python-mode/python-mode'

"Integrated GDB in VIm
Plug 'vim-scripts/Conque-GDB'

"Plugging for arduino in VIM
Plug 'stevearc/vim-arduino'


call plug#end()
" toogle Paste
set pastetoggle=<F2>

" settings for tab 
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Python mode
"let g:syntastic_ignore_files = ['\.py$']
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_python = 'python3'
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()  # XXX BREAKPOINT'


" For Folding code with indentation
" NB : Za and Zc to fold and unfold
set foldmethod=indent

" Dossier swapfile
set directory=$HOME/.vim/swapfiles//

"Config check on fly
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_python_binary_path = '/usr/bin/python3'
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" " better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<Left>"
let g:UltiSnipsJumpBackwardTrigger = "<Right>"

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
" quick fix and navigation in spelling mode
imap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-f> [s1z=<c-o>


"Nerdtree sur F12
map <F12> :NERDTreeToggle<CR>

"Touche leader sur Espace
let mapleader = "\<Space>"

" leader G to Go to definition
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Config ConqueTerm
let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly  
