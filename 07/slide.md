# Navigate files with NERDTree

[nerdtree] is just a file tree with bookmarks

```viml
Plug 'scrooloose/nerdtree'

let g:NERDTreeHijackNetrw=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

nnoremap <silent><leader><leader>f :NERDTreeToggle<CR>
nnoremap <silent><leader><leader>ff :NERDTreeFind<CR>
```

[nerdtree]: https://github.com/scrooloose/nerdtree
