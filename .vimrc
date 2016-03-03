set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'surround.vim'

" language support
Plugin 'bash-support.vim'

" git
Plugin 'tpope/vim-fugitive'

" Color Schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'

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
syntax on
colorscheme badwolf
set ts=4 sw=4 et
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

set list
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵
set cursorline
set number
set autoindent
set smartindent
set showmatch
set ruler
set incsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set cindent
set nobackup
set clipboard+=unnamed
set expandtab

" show zennkaku space
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <silent><C-e> :NERDTreeToggle<CR>
