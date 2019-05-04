execute pathogen#infect()
syntax on
filetype plugin indent on

" ==============================================
" Plugins used
" ==============================================
" -> awesome-vim-colorschemes
" -> indentpython.vim
" -> nerdtree
" -> rust.vim
" -> SimplyFold
" -> syntastic
" -> vim-flake8
" -> vim-numbertoggle
" -> vim-pandoc
" -> vim-pandoc-syntax
" -> YouCompleteMe
" -> Zenburn
" -> Powerline

" ==============================================
" Rust specific commands
" ==============================================

let g:ycm_rust_src_path="/home/donny/Documents/developer/rust-stuff/rust-master/src/"



" ==============================================
" NERDTree specific commands
" ==============================================

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

" Map Ctrl+t to open NERDTree
nmap <silent> <C-t> :NERDTreeToggle<CR>

" Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>



" ===============================================
" Vim specific commands
" ===============================================

" enable mouse support
"set mouse=a

" distinct Capital if you mix it in search words
set smartcase

" show line number
set number

" wrap lines
set wrap

" specify how to split the view
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" enable folding
set foldmethod=indent
set foldlevel=99

" enable folding with a spacebar
nnoremap <space> za

" simplyFold
let g:SimplyFold_docstring_preview=1

" PEP 8 indentation
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" JS, HTML, CSS
au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

" Flagging unnecessary whitespaces
" au BufRead,BufNewFile *.py, *.pyw, *.c, *.h, *.rs match BadWhitespace /\s\+$/

" UTF-8 support
set encoding=utf-8

" YouCompleteMe for python
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python highlight
let python_highlight_all=1

" =============================
" color scheme
" =============================

"set background=dark
"set termguicolors
"colorscheme zenburn
"colorscheme orbital
"colorscheme pink-moon
"colorscheme 256_noir
"colorscheme abstract
"colorscheme afterglow
"colorscheme alduin
"colorscheme anderson
"colorscheme angr
"colorscheme apprentice
"colorscheme archery
"colorscheme carbonized-light
"colorscheme carbonized-dark
"colorscheme challenger_deep
"colorscheme deep-space
"colorscheme deus
"colorscheme dracula
"colorscheme flattened_dark
"colorscheme flattened_light
"colorscheme github
"colorscheme gotham256
"colorscheme gruvbox
"colorscheme happy_hacking
"colorscheme iceberg
"colorscheme parsec

color space-vim-dark
set termguicolors
hi LineNr ctermbg=NONE

"let g:space_vim_dark_background = 234

" ====================================
" Powerline
" ====================================

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
