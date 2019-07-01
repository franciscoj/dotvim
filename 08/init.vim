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

" Initial
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-unimpaired'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'

" Useful
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'kana/vim-smartinput'

" Search plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'

Plug 'scrooloose/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

" Easier moving {{{

" Move between windows
nnoremap <silent><leader>wj :wincmd j<CR>
nnoremap <silent><leader>wk :wincmd k<CR>
nnoremap <silent><leader>wl :wincmd l<CR>
nnoremap <silent><leader>wh :wincmd h<CR>

" Move windows around
nnoremap <silent><leader>wJ :wincmd J<CR>
nnoremap <silent><leader>wK :wincmd K<CR>
nnoremap <silent><leader>wL :wincmd L<CR>
nnoremap <silent><leader>wH :wincmd H<CR>

" Split screens
nnoremap <silent><leader>wv :wincmd v<CR>
nnoremap <silent><leader>ws :wincmd s<CR>

" For tabs
nnoremap <silent><leader><leader>t :tabnew<CR>
nnoremap <leader><TAB> gt
nnoremap <leader><S-TAB> gT

"}}}

" Easier edit/save {{{
nnoremap <leader>fs :write<CR>
nnoremap <leader>fS :wall<CR>
nnoremap <leader>fo :edit<space>
nnoremap <leader>fe :e <C-R>=expand('%:p:h') . '/'<CR>
" }}}

" Customize file types {{{
" Markdown with auto line break + en_us spelling
augroup markdown
  autocmd!
  autocmd FileType markdown setlocal textwidth=79
  autocmd FileType markdown setlocal spell spelllang=en_us
  autocmd FileType markdown setlocal noshiftround
augroup END

" English spelling on git commit messages
augroup git_commits
  autocmd!

  autocmd FileType gitcommit setlocal spell spelllang=en_us
augroup END
" }}}

" Navigating code/files {{{
let g:fzf_command_prefix = 'FZF'
let $FZF_DEFAULT_COMMAND = 'rg --files'

nnoremap <leader>ff :FZFFiles<cr>
nnoremap <leader>fb :FZFBuffers<cr>
nnoremap <leader>s :FZFRg<space>
nnoremap \\ :FZFRg <c-r><c-w><cr>
"}}}

" Git {{{
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gl :GV!<CR>
nnoremap <leader>gL :GV<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gb :Gblame<CR>
"}}}

" NERDTree {{{
let g:NERDTreeHijackNetrw=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

nnoremap <silent><leader><leader>f :NERDTreeToggle<CR>
nnoremap <silent><leader><leader>ff :NERDTreeFind<CR>
"}}}
