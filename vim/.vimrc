set nocompatible              " be iMproved, required
filetype off                  " required

set autoindent

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'flazz/vim-colorschemes'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'mhinz/vim-startify'
"Plugin 'python-mode/python-mode'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'thaerkh/vim-indentguides'
Plugin 'tpope/vim-fugitive'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-latex/vim-latex'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'

call vundle#end()

set number

set clipboard=unnamed
set backspace=indent,eol,start

map <C-n> :NERDTreeToggle<CR>
autocmd BufWinEnter * NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter *
			\   if !argc()
			\ |   Startify
			\ |   NERDTree
			\ |   wincmd w
			\ | endif
"autocmd BufEnter * if !exists('t:startified') | Startify | let t:startified = 1 | endif

set backupdir=/Users/max/.vim_backups/

noremap <tj> :tabn
noremap <tk> :tabp
noremap <C-d> :sh<cr>
nnoremap <leader>e :buffer NERD_tree_1<CR>


highlight clear LineNr

syntax enable
set  t_Co=256
" set background=dark
colorscheme flattown
syntax on

filetype plugin indent on

set encoding=utf8
set tabstop=4

if has('python3')
	silent! python3 1
endif

let g:syntastic_python_checkers = ['python3']
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78
hi Normal ctermbg=None
