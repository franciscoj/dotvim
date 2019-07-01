# Tools for git

[fugitive] git inside Vim

```viml
Plug 'tpope/vim-fugitive'
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>gb :Gblame<CR>
```

## Bonus

[signify] show git changes in the gutter (changed, removed or added lines)
[rhubarb] to open GitHub from the code
[gv] to show and navigate the log inside vim

```viml
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'

nnoremap <leader>gl :GV!<CR> " show this files log
nnoremap <leader>gL :GV<CR> " show whole projects log
```

[fugitive]: https://github.com/tpope/vim-fugitive
[rhubarb]: https://github.com/tpope/vim-rhubarb
[signify]: https://github.com/mhinz/vim-signify
[gv]: https://github.com/junegunn/gv.vim
