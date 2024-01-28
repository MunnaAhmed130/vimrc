
" PLUGINS --------------------------------------------------------------



call plug#begin('C:\Users\User\vimfiles\plugged')

"Plug 'https://github.com/mg979/vim-visual-multi', {'branch': 'master'}

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'

call plug#end()



" keybindings ----------------------------------------------------------


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible


let mapleader = " "


" handy esc
inoremap kj <Esc>l


" From visual mode      just press      v      to enter normal mode
" From visual line mode just press   vv / V    to enter normal mode
" From visual block mode just press vv/VV/<C-v> to enter normal mode


nnoremap m %


" Easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>


" ,a - select all text in buffer
noremap <Leader>a ggVG


" Replace current line with yanked line
nnoremap <leader>r ^Pjdd


"inoremap <leader>n <esc>
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>


" Reload .vimrc
" nnoremap <leader>rr  :source ~/.vimrc<CR>


" Yank from cursor to the end of line.
nnoremap Y y$


" add empty line up and down
nnoremap <leader>j O<esc>j


nnoremap <leader>k o<esc>k

" move current line up and down
nnoremap <UP> ddkP
nnoremap <DOWN> ddp


" move chracter left and right

"inoremap <A-i> <esc>O<esc>ji
"inoremap <M-up>  <esc>O<esc>ji


" mappings for gj 
nnoremap j gj
vnoremap j gj


" mappings for gk 
nnoremap k gk
vnoremap k gk
" inoremap <Up> <C-o>gk



" quite, write and write&quit 
map <leader>q :q!<cr>
nmap <leader>w :w<cr>
nmap <leader>x :wq<cr>





" options -------------------------------------------------------------

set t_Co=256
set history=100

" enable number line
set number
set relativenumber

" enable clipboard support
set clipboard=unnamedplus
set clipboard+=unnamed

" bvvhlight cursor line underneath the cursor horizontally and vertically.
"set cursorline
"set cursorcolumn

" search highlight & incremental 
set hlsearch
set incsearch

" highlight current lineI
" set cursorline
" :highlight Cursorline cterm=bold ctermbg=black

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" enable smartcase search sensitivity
" set ignorecase
" set smartcase


set tabstop=4
" number of spaces to use for autoindenting
set shiftwidth=4

set textwidth=80
set nowrap

set encoding=utf-8
" Use space character instead of tabs
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines
set scrolloff=5

" Disble mouse use
set mouse=
" show partial command
set showcmd
" show mode
set showmode

" match pairs <> on % 
set matchpairs+=<:>

set autoindent
syntax on
"colorscheme delek 
set ruler

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" statusline
set laststatus=2

set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%
