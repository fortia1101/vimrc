"----------------------------
" General
"----------------------------
set number
set background=dark
set nowritebackup
set nobackup
set noswapfile
set noundofile
set fenc=utf-8
set expandtab
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start
set listchars=tab:^\ ,trail:~
set noerrorbells
set novisualbell
set cursorline
set autoindent
set showcmd

"----------------------------
" Key Map
"----------------------------
let mapleader="\<Space>"

"----------------------------
" Color
"----------------------------
syntax enable
colorscheme hybrid
let g:hybrid_use_iTerm_colors=2
hi LineNr ctermbg=0 ctermfg=darkblue
hi CursorLineNr ctermbg=darkblue ctermfg=0
"hi clear CursorLine

"----------------------------
" Search
"----------------------------
set ignorecase
set hlsearch
set wrapscan
set incsearch

"----------------------------
" View
"----------------------------
set showmatch matchtime=1

"----------------------------
" Status Line
"----------------------------
" Show Filename
set statusline=\ %F
" Show wether readonly or non-readonly
set statusline+=\ %r
" Show right-justify from here
set statusline+=%=
" File encoding
set statusline+=%{&fileencoding}\ \ 
" Row number
set statusline+=Ln\ %l/%L\ \ 
" Always show Status Line
set laststatus=2

"----------------------------
" Comment
"----------------------------
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

"----------------------------
" HTML/XML
"----------------------------
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END
