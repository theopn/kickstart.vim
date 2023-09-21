# kickstart.vim

### Introduction

Kickstart.vim is a Vimscript version of [Kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).
Like Kickstart.nvim, Kickstart.vim strives to be:

> A starting point for ~~Neovim~~ Vim that is:
>
> * Small
> * Single-file ~~(with examples of moving to multi-file)~~
> * Documented
> * Modular

### Installation

TODO

### Post Installation

Run the following command and then you are ready to go!

```bash
vim +PlugInstall +qa
```

### Changes from Kickstart.nvim

- kickstart.vim is written in Vimscript (:surprised Pikachu face:) and designed for Vim >= 0.8
- kickstart.vim **enables some settings enabled by default in Neovim (e.g., autoindent, syntax)** on the top of kickstart.nvim settings
- kickstart.vim uses Vim alternative for the following plugins
    - lazy.nvim -> vim-plug
    - which-key.nvim -> vim-which-key
    - gitsigns.nvim -> vim-gitgutter
    - onedark.nvim -> onedark.vim
    - lualine.nvim -> vim-airline
    - indent-blankline -> indentLine
    - Comment.nvim -> vim-commentary
    - telescope.nvim -> fzf and fzf.vim
- `undofile` is disabled by default, but the instruction and (commented) code for setting `undodir` and `undofile` are included
- kickstart.vim does not support an alternative for highlight on yank 
- Some Telescope features with no FZF alternatives are omitted ([S]earch current [W]ord, [S]earch by [G]rep, [S]earch [D]iagnostics, [S]earch [R]resume)
- kickstart.vim **does not support an alternative for nvim-treesitter**
- kickstart.vim **does not support an alternative for Neovim diagnostics and LSP**
    - I considered using coc.nvim, but it requires external dependencies and user configuration not suitable for the goal of kickstart.vim.
        I am open to creating a branch/separate version of kickstart.vim with coc.nvim support
- **Instead of nvim-cmp, kickstart.vim utilizes Omni Completion**

