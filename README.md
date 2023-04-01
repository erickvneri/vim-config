# My Neovim Environment

These are my personal Neovim configurations, so scaffolding may seems
weird to you, but it makes sense to me. However, if you think it can be
improved _(of course, it can be improved considerably)_ please do not
hesitate in leaving a message or just fork along.

---

This neovim configuration supports the following technologies:

- Python3.^
- NodeJS
- React
- Solidity
- Rust
- C-programming _(available for vim-script based setup)_.

  - Syntax highlight requirement:

        sudo apt install clangd-12 ccls
        sudo ln -T /usr/bin/clangd-12 /usr/bin/clangd

### Setup

1.  **vim-based setup**

    - Install [vim-plug](https://github.com/junegunn/vim-plug).

    - Copy `init.vim` at `~/.config/nvim`:

            cp init.vim ~/.config/nvim

    - Open Neovim and install the plugins:

            nvim
            :PlugInstall

1.  **lua-based setup**

    - Install [Packer](https://github.com/wbthomason/packer.nvim#quickstart).

    - Copy everything from the `vim-config/nvim_lua/` folder into `~/.config/nvim`:

           cp ~/vim-config/nvim_lua/* ~/.config/nvim

    - Open Neovim and install the plugins:

           nvim
           :PackerSync

    - Recommended language servers manual installation:

          :MasonInstall deno black

### Recomendations

- To avoid using the default vim editor, put the following lines into your
  `~/.profile` or `~/.bashrc` files:

      alias vi="nvim"
      alias vim="nvim"

- For Python virtual environments, it may be necessary to run the following:

      python -m pip install neovim jedi pylint black

### Troubleshooting

- In some machines, the `peek.vim` plugin fails due to an unsatisfied
  deno version requirement, which means that if you install deno from
  **snap**, you'll get a _deno v1.27.1_ and the plugin setup will fail.

  Therefore, you must install deno from the bash script provided by deno's site
  which currently installs _deno v1.32.1_, so:

        curl -fsSL https://deno.land/x/install/install.sh | sh && \
        cd ~/.local/share/nvim/site/pack/packer/start/peek.nvim && \
        deno task build:fast

---

### Donations

If you feel supportive, consider sharing some ETH at `0xEf5e2a96593376C9b9E488CA27458Ad070f30cBE`.
