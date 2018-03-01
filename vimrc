execute pathogen#infect()
filetype plugin indent on

syntax on
colorscheme jellybeans
set number
set autoindent
set ignorecase
set hlsearch
set shiftwidth=2
set laststatus=2
set noshowmode
set showmatch

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
