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
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'Yggdroot/indentLine'

call vundle#end()

set number

set clipboard=unnamed
set backspace=indent,eol,start
set lazyredraw

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
colorscheme 2357flat
syntax on

filetype plugin indent on

set encoding=utf8
set tabstop=4

if has('python3')
	silent! python3 1
endif

let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>

hi SpellBad ctermfg=NONE ctermbg=NONE guifg=#yyyyyy guibg=#zzzzzz cterm=undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=#yyyyyy guibg=#zzzzzz cterm=undercurl
hi SignColumn ctermbg=NONE

let g:airline_theme='2357flat'
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'
let g:syntastic_python_checkers = ['python3']

:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

hi Normal ctermbg=None
