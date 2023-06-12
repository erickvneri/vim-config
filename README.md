# My Neovim Environment

These are my personal Neovim configurations, so scaffolding may seems
weird to you, but it makes sense to me. However, if you think it can be
improved _(of course, it can be improved considerably)_ please do not
hesitate in leaving a message or just fork along.

---

This vim configuration supports the following technologies:

-   Python3
-   Node JS
-   Angular
-   React
-   Solidity
-   Rust
-   C-programming _(only at vim-script configs)_.

    -   Setup Syntax Highlighting:

            sudo apt install clangd-12 ccls
            sudo ln -T /usr/bin/clangd-12 /usr/bin/clangd

### Setup

1.  **vim-script based**

    -   Install [vim-plug](https://github.com/junegunn/vim-plug).

    -   Copy `init.vim` at `~/.config/nvim`:

              cp init.vim ~/.config/nvim

    -   Open vim/Neovim and Install _Plugins_:

              nvim
              :PlugInstall
              :q!

1.  **lua based**

    -   Install [Packer](https://github.com/wbthomason/packer.nvim#quickstart).
    -   Copy `init.lua` at `~/.config/nvim`.

             cp ~/vim-config/init.lua ~/.config/nvim

    -   Copy `lua/` folder at `~/.config/nvim`

             cp -r ~/vim-config/lua ~/.config/nvim

    -   Install plugins

             nvim
             :PackerSync
             :q!

    -   Install language servers

            :MasonInstall deno black lua_language_server

### Recomendations

-   To avoid using the default vim editor, put the following lines into your
    `~/.profile` or `~/.bashrc` files:

        alias vi="nvim"
        alias vim="nvim"

-   For Python virtual environments, it may be necessary to run the following:

        python -m pip install neovim jedi pylint black

### Troubleshooting

-   In some machines, the `peek.vim` plugin fails due to an unsatisfied
    deno version requirement, which means that if you install deno from
    **snap**, you'll get a _deno v1.27.1_ and the plugin setup will fail.

    Therefore, you must install deno from the bash script provided by deno's site
    which currently installs _deno v1.32.1_, so:

          curl -fsSL https://deno.land/x/install/install.sh | sh && \
          cd ~/.local/share/nvim/site/pack/packer/start/peek.nvim && \
          deno task build:fast

-   To fully enable PlantUML support, Java and Graphviz are required:

          sudo apt update && \
          sudo apt install default-jdk graphviz -y

### Support

If you feel supportive for this contribution, feel free to share some ETH at: **0xEf5e2a96593376C9b9E488CA27458Ad070f30cBE**.
