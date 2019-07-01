# Tools that help navigating code (fzf + ripgrep)

[fzr] is a fuzzy finder and a Vim plugin [fzf-vim] which uses it.

[ripgrep] is a faster grep written in Rust. Besides it knows how to ignore
files (like the things on your `.gitignore`)

```sh
brew install ripgrep
sudo pacman -S ripgrep
```

```viml
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

let g:fzf_command_prefix = 'FZF'
let $FZF_DEFAULT_COMMAND = 'rg --files'

nnoremap <leader>ff :FZFFiles<cr>
nnoremap <leader>fb :FZFBuffers<cr>
nnoremap <leader>s :FZFRg<space>
nnoremap \\ :FZFRg <c-r><c-w><cr>
```

[fzf]: https://github.com/junegunn/fzf
[fzf-vim]: https://github.com/junegunn/fzf.vim
[ripgrep]: https://github.com/BurntSushi/ripgrep
