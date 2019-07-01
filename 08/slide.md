# LSP with Coc.nvim

```viml
Plug 'neoclide/coc.nvim', {'branch': 'release'}
```

Problem: It isn't exactly simple to config...

## How to config

 * `:CocConfig`

    ```json
    {
      "languageserver": {
        "flow": {
          "command": "flow",
          "args": ["lsp"],
          "filetypes": ["javascript", "javascriptreact"],
          "initializationOptions": {},
          "requireRootPattern": true,
          "settings": {},
          "rootPatterns": [".flowconfig"]
        }
      },
      "tsserver.enableJavascript": false
    }
    ```
 * `:CocInstall coc-tsserver`
 * `:CocInstall coc-solargraph`
 * `gem install solargraph`

With that you have Flow & TS autocompletion + compiling errors

[coc]: https://github.com/neoclide/coc.nvim
[coc-tsserver]: https://github.com/neoclide/coc-tsserver
[coc-solargraph]: https://github.com/neoclide/coc-solargraph
