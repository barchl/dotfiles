execute pathogen#infect()

" echom ">^.^<" 

syntax enable
" set background=dark
" colorscheme ir_black
let base16colorspace=256
colorscheme base16-default-dark

set title
set hidden

set number
set ruler
set nocompatible

set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set wrap
set linebreak
set encoding=utf8
set t_Co=256

" set wildmenu
set wildmenu
" set height of the command bar
set cmdheight=1
" hide a buffer when it is abandoned
set hid

" Close all buffers & current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT
map <leader>ba :bufdo bd<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
" Set status line & format
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Backspace that acts like backspace should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Return to the last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Ignore case in searching.
set ignorecase
" Be smart about cases in searching
set smartcase
" Highlight search results
set hlsearch
" Magic for regular expressions.
set magic

" No sound on error
set noerrorbells
set novisualbell
set tm=500
set t_vb=

" add an extra margin to the left to look nice
set foldcolumn=1

" no backups. no swaps; everything on github
set nobackup
set nowb
set noswapfile

" Replace movement with hjkl instead of arrow keys, because I hate arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Set mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Set mappings for moving between split windows.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Set mapping for nerdtree
map <C-t> :NERDTreeToggle<CR>

" True if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return '' 
endfunction
