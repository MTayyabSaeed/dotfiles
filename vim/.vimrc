set nocompatible              " be iMproved, required
filetype off                  " required

set autoindent

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'akiomik/itermcolors-vim'
	Plugin 'chrisbra/Colorizer'
	Plugin 'elzr/vim-json'
	Plugin 'ervandew/supertab'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'git://git.wincent.com/command-t.git'
	Plugin 'majutsushi/tagbar'
	Plugin 'mhinz/vim-startify'
	Plugin 'othree/html5.vim'
	Plugin 'pangloss/vim-javascript'
	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	Plugin 'scrooloose/nerdtree'
	Plugin 'scrooloose/syntastic'
	Plugin 'tpope/vim-surround'
	Plugin 'tpope/vim-fugitive'
	Plugin 'valloric/youcompleteme'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'vim-latex/vim-latex'
	Plugin 'vim-python/python-syntax'
	Plugin 'Vimjas/vim-python-pep8-indent'
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'w0rp/ale'
	Plugin 'Yggdroot/indentLine'
call vundle#end()


map <C-n> :NERDTreeToggle<CR>
autocmd BufWinEnter * NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter *
	\   if !argc()
	\ | 	Startify
	\ |   	NERDTree
	\ |   	wincmd w
	\ | endif

set backupdir=/Users/max/.vim_backups/
set undodir=~/.vim/undo-dir
set undofile

noremap <tj> :tabn
noremap <tk> :tabp
noremap <C-d> :sh<cr>
nnoremap <leader>e :buffer NERD_tree_1<CR>

filetype plugin indent on

set backspace=indent,eol,start
set clipboard=unnamed
set encoding=utf8
set lazyredraw
set number
set shiftwidth=4
set tabstop=4

if has('python3')
	silent! python3 1
endif

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
hi clear LineNr
let g:python_highlight_all = 1
hi Normal ctermbg=None

syntax enable
set t_Co=256

colorscheme hightechbanana
let g:airline_theme='hightechbanana'
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'

hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=undercurl

hi SignColumn ctermbg=NONE guibg=NONE
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

