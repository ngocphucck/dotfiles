set number
syntax on
filetype plugin indent on
set shiftwidth=4
set softtabstop=4
set tabstop=4

"Key binding
"NERDTree
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Enable colorscheme
packadd! dracula
syntax enable
colorscheme dracula

"Configure for vimairline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"NERDTree
"" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif"

"Command for compile/run c/cpp code
au Filetype cpp let &makeprg = "g++ % -o %< && ./%< && rm %<"
au Filetype c 	let &makeprg = "gcc % -o %< && ./%< && rm %<"
au Filetype python	let	&makeprg = "python %"

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
