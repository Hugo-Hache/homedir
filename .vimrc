execute pathogen#infect()

set nocompatible
syntax on
filetype plugin indent on
set shortmess+=I

" Turn on line numbers, relatively
set number
set relativenumber

" Insert spaces, not tabs
set expandtab

" Ensure the cursor stays away from the top/bottom
set so=8

" UTF8 or die
set encoding=utf8

" One level of indentation is two spaces
set shiftwidth=2

" Show trailing whitespace
set listchars=nbsp:¬,tab:›\ ,trail:▒
set list

" Tabs are 4 spaces long
set tabstop=4

" Incremental search
set hlsearch
set incsearch

if has("gui_macvim")
  let macvim_hig_shift_movement = 1
endif

" Default completion type = known words
let g:SuperTabDefaultCompletionType = "<c-x><c-n>"

let g:syntastic_ruby_mri_exec = '~/.rbenv/shims/ruby'
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_enable_balloons = 0
