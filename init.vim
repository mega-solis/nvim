" curl -fLO $HOME/.config/nvim/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

filetype plugin indent on
syntax on

hi ColorColumn ctermbg=0 guibg=lightgrey

set encoding=UTF-8
set fileencoding=utf-8
set nocompatible
set hlsearch
set relativenumber nu
set laststatus=2
set vb
set ruler
set spelllang=en
set autoindent
set colorcolumn=80
set mouse=a
set clipboard=unnamed
set noscrollbind
set wildmenu
set autochdir
set nowrap
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set smartcase

" no arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

call plug#begin('~/.config/nvim/plugged')

Plug 'NLKNguyen/papercolor-theme' " theme
Plug 'tpope/vim-fugitive' " git
Plug 'preservim/nerdtree' " tree
Plug 'ctrlpvim/ctrlp.vim' " search
Plug 'neoclide/coc.nvim', " completion 
       \ {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'vim-airline/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons' " dev icons
Plug 'mkitt/tabline.vim' " tabline
Plug 'cespare/vim-toml' " toml
Plug 'SirVer/ultisnips' " snippets
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'} " go

call plug#end()

" tree
map <silent> <C-n> :NERDTreeFocus<CR>
let NERDTreeShowHidden=1

" ctrlp
set rtp^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" go
let g:go_fmt_command = "goimports" 
let g:go_auto_type_info = 1

set background=light
set termguicolors
colorscheme PaperColor

