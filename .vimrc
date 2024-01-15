call plug#begin('C:\Users\User\vimfiles\plugged')

"Plug 'https://github.com/mg979/vim-visual-multi', {'branch': 'master'}

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'mattn/emmet-vim'

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" enable number line
set number
set relativenumber

" search highlight & incremental 
set hlsearch
set incsearch

" highlight current lineI
" set cursorline
" :highlight Cursorline cterm=bold ctermbg=black

" enable smartcase search sensitivity
" set ignorecase
" set smartcase


set tabstop=4
set shiftwidth=4
set textwidth=80
set mouse=a
" match pairs <> on % 
set matchpairs+=<:>

set autoindent
syntax on
"colorscheme delek 
set ruler


" statusline
set laststatus=2

set statusline=
