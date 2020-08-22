call plug#begin()
Plug 'VundleVim/Vundle.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'alaviss/nim.nvim'
call plug#end()

filetype plugin indent on
colorscheme nord
set number
syntax enable

let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

set laststatus=2
set noshowmode

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

let g:ale_linters = {
\   'nim': ['nimlsp', 'nimcheck'],
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'nim': ['nimpretty'],
\}
let g:ale_linters_explicit = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✖✖'
let g:ale_sign_warning = '⚠⚠'
highlight ALEErrorSign guifg=Red
highlight ALEWarningSign guifg=Yellow
