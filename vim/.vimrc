" vimrc maintained by github.com/2357mam
" made with love <3


"    I.	settings
"   II.	vundle-plugs
"  III.	autocmds
"   IV.	augroups
"    V.	mappings
"   VI.	appearance
"  VII.	conditionals
" VIII.	plugin-config
"   IX.	misc


" == settings ================================================================
" ============================================================================

" * auto-indent
set autoindent

" * make backspace behave as it does in other editors
set backspace=indent,eol,start

" * use sys-clipboard
set clipboard=unnamed

" * highlight cur line of cursor
set cursorline

" * save swapfiles there
set directory=~/.cache/vim/swapfiles

" * default encoding
set encoding=utf8

" * unfold all folds per default
set foldlevel=99

" * each level of indentation is handled as a new fold
set foldmethod=indent

" * use - as keyword (moves cursor to bar when pressing w on foo in foo_bar)
set iskeyword-=_

" * dont permanently redraw (performance)
set lazyredraw

" * rquired by vundle
set nocompatible

" * relnr as default
set number relativenumber

" * append vundle to runtimepath
set rtp+=~/.vim/bundle/Vundle.vim

" * indent by this when using << or >>
set shiftwidth=4

" * scrolloff: show these many lines between cur and top/bottom
set so=6

" * sp to bottom
set splitbelow

" * vsp to right
set splitright

" * 256colors
set t_Co=256

" * one tab equals these many spaces
set tabstop=4

" * truecolor
set termguicolors

" * dont wrap text
set tw=0

" * save change-hist per file to this dir
set undodir=~/.vim/undo-dir

" * save change-hist per file
set undofile



" == vundle plugs ============================================================
" ============================================================================

call vundle#begin()
    Plugin 'akiomik/itermcolors-vim'
    Plugin 'chrisbra/Colorizer'
    Plugin 'christoomey/vim-tmux-navigator'
    Plugin 'elzr/vim-json'
    Plugin 'ervandew/supertab'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'gabrielelana/vim-markdown'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'Konfekt/FastFold'
    Plugin 'ludovicchabant/vim-gutentags'
    Plugin 'majutsushi/tagbar'
    Plugin 'mhinz/vim-startify'
    Plugin 'othree/html5.vim'
    Plugin 'pangloss/vim-javascript'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-rhubarb'
    Plugin 'tpope/vim-surround'
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



" == autocmds ================================================================
" ============================================================================

" * launch NerdTree on launch
autocmd BufWinEnter * NERDTreeMirror

" * quit if NerdTree is last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
   \ && b:NERDTree.isTabTree()) | q | endif

" * move to correct buffer after launching w Nerdtree and Startify
autocmd VimEnter *
 \   if !argc()
 \ |  Startify
 \ |    NERDTree
 \ |    wincmd w
 \ | endif



" == augroups ================================================================
" ============================================================================

" * highlight chars at index >= 80
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#f2267f
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END

" * toggle relnr when enterin/ leavin insert-mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END



" == mappings ================================================================
" ============================================================================

" == >> modes: normal, visual, select (MAP)

" * scroll 4 lines with ctrl-e/y
nn <C-e> 4<C-e>
nn <C-y> 4<C-y>

" * toggle NerdTree
map <C-n> :NERDTreeToggle<CR>

" * new mappings for actual tabs (to cope with buffer-nav-bindings)
map <tj> :tabn<cr>
map <tk> :tabp<cr>


" == >> mode: normal (NMAP)

" * toggle relnr with binding
nmap ; :call ToggleRelativeNumber()<CR>

" * switch between buffers like native tab-handling
nmap gt :bnext<CR>
nmap gT :bprevious<CR>

" * CtrlPTag
nmap <C-f> :CtrlPTag<cr>

" * save everything and get out of here
nmap <C-X> :wqa!<cr>

" * tmux-bindings
nmap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nmap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nmap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nmap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nmap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>



" == appearance ==============================================================
" ============================================================================

" * highlight syntax
syntax enable

" * default colorscheme
colorscheme hightechbanana

" * sane colorvals, err-barcolors same as globals
hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=undercurl
hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=undercurl
hi SignColumn ctermbg=NONE guibg=NONE

" * vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"



" == conditionals ============================================================
" ============================================================================

" * launch files at line of last cursor-position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") 
     \ <= line("$") | exe "normal! g`\"" | endif
endif


" * surpress deprecation-warnings
if has('python3')
 silent! python3 1
endif



" == plugin-configuration ====================================================
" ============================================================================

" * just show 'tabline' for buffers if more than one buffer is open
let g:airline#extensions#tabline#buffer_min_count =2

" * enable tabline via airline
let g:airline#extensions#tabline#enabled = 1

" * just show fname instead of full path in airline
let g:airline#extensions#tabline#fnamemod = ':t'

" * enable powerline in airline
let g:airline_powerline_fonts=1

" * airline-theme
let g:airline_theme='hightechbanana'

" * custom git-url for fugitives Gbrowse
let g:github_enterprise_urls = ['http://git.baltic-online.de']

" * required for proper powerline-rendering
let g:Powerline_symbols='unicode'

" * enables all syntax-highlighting for python (see python-syntax)
let g:python_highlight_all = 1

" * dont switch tmux-panes while zoomed
let g:tmux_navigator_disable_when_zoomed = 1

" * no header (cowsay) in startify
let g:startify_custom_header = []



" == misc ====================================================================
" ============================================================================

" * load ftype-specific plugins and indentations
filetype plugin indent on


" * toggle relnr
function! ToggleRelativeNumber()
  if &relativenumber
    set norelativenumber
  else
    set relativenumber
  endif
endfunction
