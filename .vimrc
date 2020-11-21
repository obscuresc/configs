" set syntax highlighting on
syntax on

" don't use error sounds
set noerrorbells

" set width of tab character to be four characters 
set tabstop=4

" set shift width to be four characters
set shiftwidth=4

" use auto smart indentation
set smartindent

" use line numbers
set nu

" don't wrap long lines
set nowrap

" prevent vim from using swap files
set noswapfile

" don't use backup files
set nobackup

" use persistent undo (directory needs to be created)
set undodir=~/.vim/undodir
set undofile

" use incremental search
set incsearch

" display a column to indicate width of standard terminal
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
	let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30 <CR>

nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
