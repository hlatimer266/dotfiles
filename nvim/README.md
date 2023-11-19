### Ubuntu Installation

#### build neovim from source

There was an issue with `lukas-reineke/indent-blankline.nvim` plugin which required neovim verison 0.10 or higher. As of 11/19/23 you're only able to install version 0.8 or less of neovim using `apt install`. To work around this problem you can build neovim from source. Steps to build from source https://github.com/neovim/neovim/wiki/Building-Neovim#quick-start

#### init.lua 

Copy `init.lua` to `/home/$USER/.config/nvim/init.lua`. next time you open `nvim` all the plugins should get installed


