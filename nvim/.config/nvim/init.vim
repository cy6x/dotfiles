call plug#begin('~/.config/nvim/plug')

Plug 'vimwiki/vimwiki'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'romainl/vim-cool'
Plug 'PProvost/vim-ps1'
Plug 'overcache/NeoSolarized'

call plug#end()

set fillchars+=vert:│      " Use full height bar char as vertical separator.
syntax enable
set termguicolors
colors NeoSolarized
let g:lightline = { 'colorscheme': 'solarized' }
set cursorline

"set encoding=utf-8
"set bomb
"set binary
set title titlestring=%t
set mouse=a
set number relativenumber
set numberwidth=4
set scrolloff=10
set splitbelow splitright
set cursorline
set noshowmode noshowcmd
set shortmess=atI
set modeline
set magic
set lazyredraw
set noerrorbells
set tabstop=4 shiftwidth=4 softtabstop=4
set expandtab
set shiftround
set ignorecase smartcase
set nobackup nowritebackup noswapfile

let mapleader = ','

nnoremap ; :
vnoremap ; :

nmap j gj
nmap k gk

nnoremap <Tab> %
vnoremap <Tab> %

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nnoremap <C-t> :tabnew<CR>
nnoremap H gT
nnoremap L gt

nmap <silent>S :w!<CR>
nmap <silent>Q :q<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

autocmd BufRead,BufNewFile *.h set filetype=c

" Restore cursor to file position in previous editing session
augroup resCur
	autocmd!
	autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" Disable auto-comment new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nmap <Leader>s :%s//g<Left><Left>

let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
map <silent> <leader><leader> :NERDTreeToggle<CR>
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
