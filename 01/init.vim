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
call plug#end()
" }}}
