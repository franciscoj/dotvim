" vim: fdm=marker fmr={{{,}}} fdl=0 fen

" Basic config {{{
" better leader
let mapleader      = ' '
let maplocalleader = ','

" To use the system clipboard (xclip)
set clipboard=unnamed,unnamedplus

" Indention {{{
set tabstop=2      " number of visual spaces per TAB.
set shiftwidth=2   " number of spaces to use for each step of (auto)indent.
set softtabstop=2  " number of spaces in tab when editing.
set shiftround     " round indent to multiple of 'shiftwidth'
set expandtab      " tabs are spaces
set smarttab
set autoindent
set copyindent
set smartindent
"}}}

" Best options for changing text
set cpoptions+=$
"}}}

" Plugins {{{
call plug#begin('~/Documents/dotvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
call plug#end()
" }}}

" ALE {{{
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_column_always = 1

let g:ale_linters = {
      \ 'elixir': ['mix', 'elixir-ls'],
      \ 'ruby': ['rubocop', 'ruby'],
      \ 'rust': ['cargo']
      \}

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'elixir': ['mix_format'],
      \ 'ruby': ['rubocop'],
      \ 'javascript': ['prettier'],
      \ 'typescript': ['prettier'],
      \ 'rust': ['rustfmt']
      \}

nnoremap <silent><leader>lf :ALEFix<CR>
nnoremap <silent><leader>ld :ALEDetail<CR>
nnoremap <silent><leader>lo :lopen<CR>
nnoremap <silent><leader>lc :lclose<CR>

"}}}
