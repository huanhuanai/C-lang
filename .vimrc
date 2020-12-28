" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings,you should do it in this file (/etc/vim/vimrc),since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.
 
" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
 
" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded,so it will override
" any settings in these files.
" If you don't want that to happen,uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1
 
" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options,so any other options should be set AFTER setting 'compatible'.
"set compatible
 
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif
 
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark
 
" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif
 
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif
 
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
 
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
 
set nocompatible
"filetype off
 
" set runtime path
set rtp+=~/.vim/bundle/Vundle.vim
 
" vundle initialize
call vundle#begin()
 
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
 
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
 
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'terryma/vim-multiple-cursors'
 
Plugin 'scrooloose/nerdcommenter'
 
Plugin 'scrooloose/nerdtree'
 
Plugin 'majutsushi/tagbar'

Plugin 'mhinz/vim-startify'

Plugin 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

Plugin 'PyCQA/pyflakes'

Plugin 'Xuyuanp/nerdtree-git-Pluginin'

Plugin 'vim-airline/vim-airline'

Plugin 'Yggdroot/indentLine'

Plugin 'w0ng/vim-hybrid'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-surround'

Plugin 'junegunn/fzf.vim'

Plugin 'majutsushi/tagbar'

Plugin 'Shougo/deoplete.nvim'

Plugin 'sbdchd/neoformat'

Plugin 'tpope/vim-commentary'

call vundle#end()
 
" 显示当前的行号列号
set ruler
 
" 设置文内智能搜索提示
" 高亮search命中的文本
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase
set backspace=2
 
 
set cursorline
set number
 
" 自动缩进
set autoindent
set cindent
 
" tab兼的宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4
 
" set vim-linestatus
set laststatus=2
let g:Powerline_symbols='unicode'
 
" set colorscheme
set background=dark
"set background=light
let g:solarized_termcolors=256
colorscheme solarized
