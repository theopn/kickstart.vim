" Settings enabled by default in Neovim
set autoindent autoread background=dark backspace=indent,eol,start
"set backupdir=~/.local/state/vim/backup/
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
Plug 'junegunn/fzf.vim'
call plug#end()

" Settings for plugins
" vim-which-key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" OneDark
colorscheme onedark
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" [[ Settings options ]]
" NOTE: You can change these options as you wish!

" Set highlight on search
set hlsearch

" Make line numbers default
set number

" Enable mouse mode
set mouse=a

" Sync clipboard between OS and Neovim.
"  Remove this option if you want your OS clipboard to remain independent.
"  See `:help 'clipboard'`
set clipboard=unnamedplus

" Enable break indent
set breakindent

" Save undo history
" This is disabled by default
" If you wish to enable persistent undo,
" uncomment the next two lines and create undo directory
"set undodir=$HOME/.local/state/vim/undo//
"set undofile

" Case-insensitive searching UNLESS \C or capital in search
set ignorecase
set smartcase

" Keep signcolumn on by default
set signcolumn=yes

" Decrease update time
set updatetime=250
set timeoutlen=300

" Set completeopt to have a better completion experience
set completeopt=menuone,noselect

" NOTE: You should make sure your terminal supports this
set termguicolors

" [[ Basic Keymaps ]]

" TODO Remove this later
inoremap jk <ESC>

" Keymaps for better default experience
nmap <silent> <Space> <Nop>
xmap <silent> <Space> <Nop>

" Remap for dealing with word wrap
nmap <expr> <silent> k v:count == 0 ? 'gk' : 'k'
nmap <expr> <silent> j v:count == 0 ? 'gj' : 'j'

" [[ Configure fzf.vim ]]
" See `:help fzf-vim`

" [?] Find recently opened files
nmap <leader>? :History<CR>
" [ ] Find existing buffers
nmap <leader><space> :Buffers<CR>
" [/] Fuzzily search in current buffer
nmap <leader>/ :BLines<CR>
" Search [G]it [F]iles
nmap <leader>gf :GFiles<CR>
" [S]earch [F]iles
nmap <leader>sf :Files<CR>
" [S]earch [H]elp
nmap <leader>sh :Helptags<CR>

" [[ Configure built-in completion ]]
" TODO Make tab bring up the completion menu

" The line beneath this is called `modeline`. See `:help modeline`
" vim: ts=2 sts=2 sw=2 et
