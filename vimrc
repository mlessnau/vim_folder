set nocompatible                       " use all of Vim's features
set backupdir=/tmp                     " backup file directory
set directory=/tmp                     " swap file directory
set fileencoding=utf8                  " default file encoding
set wildmenu                           " bash like completion for files
set t_Co=256                           " enable 256 colors
set number                             " line numbers
set wrap                               " word wrap
set scrolloff=30                       " offset kept above/below to cursor position
set sidescrolloff=10                   " offset kept left/right to cursor position
set whichwrap+=<,>,[,]                 " enable line warping when using arrow keys
set list lcs=tab:·\ ,trail:¶,eol:¬     " whitespace markers
set title                              " set terminal title
set ttyfast                            " enable fast TTY support
set mouse=a                            " enable mouse support
set ttymouse=xterm2                    " mouse support for xterm
set hlsearch                           " highlight search matches
set incsearch                          " search matches as you type
set expandtab                          " use tabs
set smarttab                           " use smart tabbing
set shiftwidth=4                       " tab width (indentation)
set tabstop=4                          " tab stop width
set bs=indent,eol,start                " backspace over everything including linebreaks and indentation
set lazyredraw                         " disable rendering when macros are executed
let mapleader=","                      " redefine <leader>
set cursorline
set cursorcolumn
set laststatus=2

set colorcolumn=80
" execute "set colorcolumn=" . join(range(80,334), ',')

syntax on                              " enable syntax highlighting
filetype plugin indent on              " enable filetype plugins and indentation

" NERDTree
"let g:NERDTreeShowHidden=0             " show hidden files in NERTree by default
let g:NERDTreeWinSize=40               " set NERDTree width to 50 columns
"autocmd VimEnter * NERDTree            " open NERDTree on startup
"autocmd VimEnter * wincmd l            " focus on buffer

" Airline
let g:airline_theme="understated"

" block shift
map <C-k> :call BlockShiftUp()<CR><Esc><Esc>
map <C-j> :call BlockShiftDown()<CR><Esc><Esc>
vmap <C-k> :call BlockShiftUp()<CR>
vmap <C-j> :call BlockShiftDown()<CR>

" fugitive
map <leader>gb :Gblame<CR>
map <leader>ge :Gedit<CR>
map <leader>gd :Gdiff<CR>

" MRU
"let MRU_File=~/.vim.mru
let MRU_Max_Entries=20
let MRU_Window_Height=14
let MRU_Max_Menu_Entries=20
map <leader>m :MRU<CR>

" colors
colorscheme mlessnau_white

cmap w!! %!sudo tee > /dev/null %
"map <CR> o

" [Space] initiates (forward) search in command mode
map <Space> /

" ctags
map <leader>+ <C-]>
map <leader>- <C-O>
map <leader># :tselect<CR>

" Supertab
let g:SuperTabDefaultCompletionType = "<C-n>"

" ctrlp
map <leader><leader> <c-p>
let g:ctrlp_working_path_mode = ''

" Tab navigation
map <leader>l :tabn<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>

" when using 'TERM=screen-256color' (tmux compat) vim cannot handle some key bindings anymore
if $TERM =~ '^screen-256color'
  map <Esc>OH <Home>
  map! <Esc>OH <Home>
  map <Esc>OF <End>
  map! <Esc>OF <End>
endif

" copy contents between vim sessions
nmap <leader>w V:w! /tmp/snippet<CR>
nmap <leader>r :r /tmp/snippet<CR>
vmap <leader>w :w! /tmp/snippet<CR>
vmap <leader>r c<Esc>:r /tmp/snippet<CR>

