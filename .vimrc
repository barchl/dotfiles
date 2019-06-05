"""""""""""""""""""""""""""""""""""""""""
"
" ~/.vimrc
"
" ---------------------------------------
" Contents:				|
" ---------------------------------------
" -> General				|
" -> Keybindings			|
" -> Movement & Buffers			|
" -> UI					|
" -> Status bar				|
" -> Files & Backups			|
" -> Text/Tab/Indents			|
" -> Misc				|
" -> Helpers				|
" ---------------------------------------

" load pathogen
execute pathogen#infect()

" ---------------------------------------
" -> General				|
" ---------------------------------------

" Set ruler to lines, columns (see bottom right)
set ruler 
set rulerformat=%=%h%m%r%w\ %(%c%V%),%l/%L\ %P

" Set numbers to the left.
set number 

" Set syntax highlighting.
syn on

" Turn off swap files
set noswapfile

" Keep a bunch of history
set history=100

" set tabs to 4 spaces width
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" ---------------------------------------
" -> Keybindings			|
" ---------------------------------------

" Nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" jk/kj -> <Esc>
imap jk <Esc>
imap kj <Esc>

" Change between split windows 
" With arrows
nmap <left> <C-W>h 
nmap <right> <C-W>l 
nmap <up> <C-W>k 
nmap <down> <C-W>j
" or with <C-h/j/k/l>
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" ---------------------------------------
" -> Misc				|
" ---------------------------------------

" Nerdtree arrow symbols
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
