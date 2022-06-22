" curl -fLO $HOME/.config/nvim/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.config/nvim/plugged')
Plug 'NLKNguyen/papercolor-theme' " theme
Plug 'tpope/vim-fugitive' " git
Plug 'preservim/nerdtree' " tree
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-airline/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' " dev icons
Plug 'mkitt/tabline.vim' " tabline
Plug 'cespare/vim-toml' " toml
Plug 'SirVer/ultisnips' " snippets
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'} " go
Plug 'simrat39/rust-tools.nvim' " rust
Plug 'terryma/vim-multiple-cursors' " multiple lines edit 
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
call plug#end()
" -----------------------------------------------------------------------------

" theme
set background=light
set termguicolors
colorscheme PaperColor

" general changes
let mapleader=","

" <ctrl> +h/j/k/l/ to switch left/bottom/top/right
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" no arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

filetype plugin indent on
syntax on
" -----------------------------------------------------------------------------

set shortmess+=I
hi ColorColumn ctermbg=0 guibg=lightgrey

set encoding=UTF-8
set fileencoding=UTF-8
set nocompatible
set hlsearch
set relativenumber nu
set laststatus=2 " shows bottom status line
set vb
set ruler
set spelllang=en
set autoindent
set colorcolumn=80
set mouse+=a
set clipboard^=unnamed
set noscrollbind
set wildmenu
"set autochdir
set nowrap
set noerrorbells visualbell t_vb=
set tabstop=4 softtabstop=4
set expandtab
set smartindent

" search even if no enter pressed, casesensetive if upper case letter typed
set ignorecase
set smartcase
set incsearch

" tree
map <silent> <leader>m :NERDTreeFocus<CR>
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrow=1
let NERDTreeShowLineNumbers=1

" airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show = 1

" telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

