execute pathogen#infect()

" This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice.
set nocompatible

" load changes to file automatically if no changes in buffer
set autoread

" folding
set foldmethod=marker

" smart searching
set ignorecase
set smartcase

" confirm before quitting if there are unsaved changes
set confirm

" no... 'ni' (line numbers)
set nu!

" backspace through the things
set backspace=indent,eol,start

" pretty, pretty colors
let g:solarized_termtrans=1
syntax enable
set background=dark
colorscheme solarized

" ruler
set ruler
set rulerformat=%26(%y%r%m\ (%n)\ %.7l,%.7c\ %=\ %P%)

" Show the input of an *incomplete* command
set showcmd

" Status line
set laststatus=2

" Word wrap
set wrap
set linebreak

" If I'm typing, hide mouse cursor
set mousehide

" Visual bell
set vb

" Turn off the bell
set noeb

" I - no intro message when starting vim fileless
set shortmess=I

" Tab settings
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" gVim
if has("gui_running")
  set lines=50 columns=200
endif

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"let g:syntastic_enable_perl_checker = 1
"let g:syntastic_perl_checkers = ['perl']
