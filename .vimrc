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
Plugin 'matze/vim-move'
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'mxw/vim-jsx'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Valloric/MatchTagAlways'

" Plugin 'klen/python-mode'
" Plugin 'davidhalter/jedi-vim'
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
set encoding=utf-8

let g:gruvbox_italic=1
set bg=dark
colorscheme gruvbox

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Linter settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:passive_filetypes = ['js', 'javascript']

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

" Font settings
" set guifont=Hack\ 12
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 14

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Python PEP8 standards
au BufNewFile,BufRead *.py
    \ setlocal tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Highlight eslintrc as json
au BufReadPost .eslintrc set syntax=json
