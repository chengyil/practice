filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=C:/Users/ChengYiLee/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'flazz/vim-colorschemes'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'tpope/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/webapi-vim' 
Plugin 'mattn/gist-vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

set guifont=IBM_Plex_Mono:h11:cANSI:qDRAFT
" color desert
syntax on
set nocompatible
set ai " Auto Indent
set si " smart indent
set ru " on ruler
set sc " show command
set number
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set foldmethod=indent
set hlsearch
set swapfile
set backupdir=C:/Users/ChengYiLee/tmp
set backupskip=C:/Users/ChengYiLee/tmp
set directory=C:/Users/ChengYiLee/tmp
set undodir=C:/Users/ChengYiLee/tmp
set writebackup
set incsearch " Turn on incremental searching
"set t_Co=256 " Enable 256 colors
" Enable Markdown folding
set foldenable

" Make airline appear all the time
set laststatus=2
" Show word count
let g:airline#extensions#wordcount#enabled = 1	
let g:airline_left_sep=''
let g:airline_right_sep=''
if has("gui_running")
  set background=dark
  colorscheme solarized
  autocmd vimenter * NERDTree
  " Close if there is only 1 nerdtree window
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif
