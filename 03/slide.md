# Helpful things without plugins

You can do a lot with plain Vim. Some things which are a bit painful can be
easily improved. Vim help is full of interesting information. e.g.:

```
:h nnoremap
```

You navigate help with the usual `hjkl` (or `CTRL+D`/`CTRL+U`) and open tags
with `CTRL+]`

Bonus: `CTRL+[` has can be used to exit command mode

## To move around

Moving around in Vim is a bit painful, but you can improve it easily

```viml
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
```

## To save and open files

```viml
nnoremap <leader>fs :write<CR>
nnoremap <leader>fS :wall<CR>
nnoremap <leader>fo :edit<space>
nnoremap <leader>fe :e <C-R>=expand('%:p:h') . '/'<CR>
```

## To customize how files are edited

```viml
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
```
