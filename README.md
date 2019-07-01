# Dotvim talk

These are just some slides and examples on how to build your own dotfiles for
vim.

# Structure

Each slide is on a folder and includes an `init.vim` file which can be used to
initialize Vim with it by running:

```sh
nvim -u init.vim +PlugInstall
```

## TOC

1. vim-plug -> Easy way to have plugins
2. An example -> Having linting with ALE
3. Things you can do without plugin
4. Plugins which help writing code
5. Tools for navigating code
6. Tools for git
7. NERDTree
8. LSP wit Coc.nvim

## Requirements mac

```sh
brew install neovim
brew install ripgrep
```

## Requirements ArchLinux

```sh
sudo pacman -S neovim ripgrep
```
