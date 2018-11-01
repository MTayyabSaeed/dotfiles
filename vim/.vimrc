set nocompatible
filetype off

set autoindent

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
	Plugin 'akiomik/itermcolors-vim'
	Plugin 'chrisbra/Colorizer'
	Plugin 'christoomey/vim-tmux-navigator'
	Plugin 'elzr/vim-json'
	Plugin 'ervandew/supertab'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'kien/ctrlp.vim'
	Plugin 'Konfekt/FastFold'
	Plugin 'gabrielelana/vim-markdown'
	Plugin 'git://git.wincent.com/command-t.git'
	Plugin 'ludovicchabant/vim-gutentags'
	Plugin 'majutsushi/tagbar'
	Plugin 'mhinz/vim-startify'
	Plugin 'othree/html5.vim'
	Plugin 'pangloss/vim-javascript'
	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	Plugin 'scrooloose/nerdtree'
	Plugin 'scrooloose/syntastic'
	Plugin 'tpope/vim-rhubarb'
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
	Plugin 'xuhdev/vim-latex-live-preview'
	Plugin 'Yggdroot/indentLine'
call vundle#end()


map <C-n> :NERDTreeToggle<CR>
autocmd BufWinEnter * NERDTreeMirror
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
			\ && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter *
	\   if !argc()
	\ | 	Startify
	\ |   	NERDTree
	\ |   	wincmd w
	\ | endif

set directory=~/.cache/vim/swapfiles
set undodir=~/.vim/undo-dir
set undofile
set columns=80
set colorcolumn=80

nnoremap <C-X> :wqa!<cr>
noremap <tj> :tabn<cr>
noremap <tk> :tabp<cr>
noremap <C-d> :sh<cr>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader>e :buffer NERD_tree_1<CR>

filetype plugin indent on

set backspace=indent,eol,start
set clipboard=unnamed
set encoding=utf8
set lazyredraw
set number relativenumber
set shiftwidth=4
set tabstop=4
set cursorline
set splitbelow
set splitright
set iskeyword-=_


if has('python3')
	silent! python3 1
endif

syntax enable

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

hi clear LineNr
hi Normal ctermbg=None

set termguicolors

let g:python_highlight_all = 1

set t_Co=256

colorscheme hightechbanana
let g:airline_theme='hightechbanana'

let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'

hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=undercurl

hi SignColumn ctermbg=NONE guibg=NONE
:command! -complete=file -nargs=1 Rpdf :r
			\ !pdftotext -nopgbrk <q-args> - |fmt -csw78

function! ToggleRelativeNumber()
  if &relativenumber
	   set norelativenumber
  else
	   set relativenumber
  endif
endfunction
nmap ; :call ToggleRelativeNumber()<CR>

let g:tmux_navigator_disable_when_zoomed = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

set hidden
nmap <leader>T :enew<cr>
nmap gt :bnext<CR>
nmap gT :bprevious<CR>
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") 
			  \ <= line("$") | exe "normal! g`\"" | endif
endif
set so=6
set foldmethod=indent
set foldlevel=99

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

let g:github_enterprise_urls = ['http://git.baltic-online.de']
let g:fugitive_gitlab_domains = ['https://git.baltic-online.de']

" just show 'tabline' for buffers if more than one buffer is open
let g:airline#extensions#tabline#buffer_min_count =2
" no header (cowsay) in startify
let g:startify_custom_header = []
