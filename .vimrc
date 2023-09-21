" Settings enabled by default in Neovim
set autoindent autoread background=dark backspace=indent,eol,start
"set backupdir
set laststatus=2
set list listchars=tab:>\ ,trail:-,nbsp:+

" Set <space> as the leader key
" See `:help mapleader`
"  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
let mapleader=' '
let maplocalleader = ' '

" Install package manager
" https://github.com/junegunn/vim-plug/
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" NOTE: Here is where you install your plugins.
call plug#begin()

" Git related plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Detect tabstop and shiftwidth automatically
Plug 'tpope/vim-sleuth'

" Useful plugin to show you pending keybinds.
Plug 'liuchengxu/vim-which-key'

" Adds git related signs to the gutter
Plug 'airblade/vim-gitgutter'

" Theme inspired by Atom
Plug 'joshdick/onedark.vim'

" Set airline as statusline
Plug 'vim-airline/vim-airline'

" Add indentation guides even on blank lines
Plug 'Yggdroot/indentLine'

" "gc" to comment visual regions/lines
Plug 'tpope/vim-commentary'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" Settings for plugins
" vim-which-key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" OneDark
colorscheme onedark
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" [[ Settings options ]]
" NOTE: You can change these options as you wish!
inoremap jk <ESC>

" ...

" The line beneath this is called `modeline`. See `:help modeline`
" vim: ts=2 sts=2 sw=2 et
