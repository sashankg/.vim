set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'cmugpi/vim-c0'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

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
"

"Turn on auto-indent
set autoindent

"Show line numbers
set number

"Enable syntax highliting
syntax enable

"JSX Syntax for non .jsx files
let g:jsx_ext_required = 0

"Enable AutoSave on Vim startup
let g:auto_save = 1 

"CtrlP set to current directory
let g:ctrlp_working_path_mode = 0

"UltiSnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Switch between splits naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Open splits to right and bottom
set splitbelow
set splitright

"Powerful backspace
set backspace=2

"Add semicolon to end of line
map ; $a;<Esc>

"CtrlP custom ignore
set wildignore+=*/tmp/*,*.so,*.zip,*/bower_components/*,*/node_modules/*,*/ios/*,*/android/*,*/Packages/*,
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|ios\|\android\|Packages\|bower_components'

"Tabs
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
