set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'othree/html5.vim'
Plugin 'Tpope/vim-commentary'
Plugin 'mattn/emmet-vim'
Plugin 'matze/vim-move'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'marijnh/tern_for_vim'
" Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set number

let g:gruvbox_italic=1
set bg=dark
colorscheme gruvbox

set guioptions -=m
set guioptions -=T

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_powerline_fonts = 1
set laststatus=2

set guioptions+=c
set guioptions+=R
set guioptions-=m
set guioptions-=r
set guioptions-=b
set guioptions-=T
set guioptions-=R
set guioptions-=L
set guioptions-=e

" if has("gui_running")
"   if has("gui_gtk2")
"     set guifont=Sauce Code Powerline
"   elseif has("gui_macvim")
"     set guifont=Menlo\ Regular:h14
"   elseif has("gui_win32")
"     set guifont=Consolas:h11:cANSI
"   endif
" endif
