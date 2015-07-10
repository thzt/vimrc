" ------------------------------------------------------------

" $VIM/_vimrc

" ------------------------------------------------------------

set nu				       " show line number
set nobk			       " don't create backup file
set noswf			       " don't create swap file
syntax enable		       " open syntax highlighting
syntax on			       " auto highlight syntax
set mouse=a			       " support mouse
set ai				       " auto indent
set ts=4			       " tab width
au GUIEnter * simalt ~x    " full screen
set go-=T                  " remove icon bar

" ------------------------------------------------------------

" Vundle.vim
" git clone https://github.com/gmarik/Vundle.vim.git $VIM/vimfiles/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" -----------------------------

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" emmnet
Plugin 'mattn/emmet-vim'
let g:user_emmet_expandabbr_key = '<Tab>'

" color scheme
Plugin 'freya'

" syntax
Plugin 'derekwyatt/vim-scala'
Plugin 'wting/rust.vim'

" -----------------------------

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ------------------------------------------------------------

colorscheme freya












