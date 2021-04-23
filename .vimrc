set nu
syntax enable
filetype plugin indent on
set autoindent " take indent for new line from previous line
set laststatus=2

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Enable use of mouse for all modes
set mouse=a

" Set indentation to use 4 spaces
set shiftwidth=4

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Set highlight for search command
set hlsearch

" Set new command for exiting insert mode
imap <C-L> <Esc>
