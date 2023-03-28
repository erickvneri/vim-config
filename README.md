# Vim configuration

```
This a personal configuration for the vim text editor as it
is my main IDE at the moment, because it's fun and practical.
```

This vim configuration supports the following technologies:

- Python3.
- Node JS.
- Angular.
- React.
- C-programming.

  - Setup Syntax Highlighting:

        sudo apt install clangd-12 ccls
        sudo ln -T /usr/bin/clangd-12 /usr/bin/clangd

### Setup

1. Install [vim-plug](https://github.com/junegunn/vim-plug).

1.  Copy `init.vim` to `~/.config/nvim`:

        cp init.vim ~/.config/nvim

1.  Install [Vim Plug](https://github.com/junegunn/vim-plug).
1.  Open vim/Neovim and Install _Plugins_:

        vi .
        :PlugInstall
        :q!
