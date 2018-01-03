set nocompatible
set ignorecase smartcase
set tabstop=2 softtabstop=0 expandtab shiftwidth=2
set nobackup nowritebackup
set number
set incsearch
set backspace=indent,eol,start

let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'asciidoc/vim-asciidoc'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tomasr/molokai'
Plugin 'Shougo/neocomplete.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Themes
colorscheme molokai

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" enable neocomplete
let g:neocomplete#enable_at_startup = 1

" Leader keys
nnoremap / /\v
vnoremap / /\v

nnoremap <leader><space> :nohls<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa!<cr>
nnoremap <leader>x :x<cr>
nnoremap <leader>X :xa<cr>
nnoremap <leader>w <C-W><C-W>
nnoremap <leader>W <C-W>W

" MiniBufExpl
nnoremap <leader>bl :MBEToggle<cr>
nnoremap <C-N> :MBEbn<cr>
nnoremap <C-P> :MBEbp<cr>
nnoremap <leader>bw :MBEbd<cr>
