# My Neovim Environment

These are my personal Neovim configurations, so scaffolding may seems
weird to you, but it makes sense to me. However, if you think it can be
improved _(of course, it can be improved considerably)_ please do not
hesitate in leaving a message or just fork along.

---

This vim configuration supports the following technologies:

- Python3
- Node JS
- Angular
- React
- Solidity
- Rust
- C-programming.

  - Setup Syntax Highlighting:

        sudo apt install clangd-12 ccls
        sudo ln -T /usr/bin/clangd-12 /usr/bin/clangd

### Setup

1.  **vim-script based**

    - Install [vim-plug](https://github.com/junegunn/vim-plug).

    - Copy `init.vim` at `~/.config/nvim`:

            cp init.vim ~/.config/nvim

    - Open vim/Neovim and Install _Plugins_:

            nvim
            :PlugInstall
            :q!

1.  **lua based**

    - Install [Packer](https://github.com/wbthomason/packer.nvim#quickstart).
    - Copy `init.lua` at `~/.config/nvim`.

           cp ~/vim-config/init.lua ~/.config/nvim

    - Copy `lua/` folder at `~/.config/nvim`

           cp -r ~/vim-config/lua ~/.config/nvim

    - Install plugins

           nvim
           :PackerSync
           :q!

    - Install language servers

          :MasonInstall deno

### Recomendations

To avoid using the default vim editor, put the following lines into your
`~/.profile` or `~/.bashrc` files:

      alias vi="nvim"
      alias vim="nvim"
