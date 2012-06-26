set nocompatible                   " make use of all of Vim's features
set backupdir=/tmp                 " backup file directory
set directory=/tmp                 " swap file directory
set fileencoding=utf8              " default file encoding
set t_Co=256                       " enable 256 colors
set number                         " line numbers
set wrap                           " word wrap
set scrolloff=10                   " places the current line in the middle of the window
set list lcs=tab:·\ ,trail:¶,eol:¬ " whitespace markers
set colorcolumn=80                 " put a marker at 80-th column
set cursorline                     " highlight current line
set title                          " set terminal title
set ttyfast                        " enable fast TTY support
set ttymouse=xterm2                " mouse related fix (had some issues with iterm2 on mac)
set mouse=a                        " enable mouse support
set hlsearch                       " highlight search matches
set incsearch                      " search matches as you type
let g:NERDTreeShowHidden=0         " show hidden files in NERTree by default
let g:NERDTreeWinSize=40           " set NERDTree width to 50 columns
set noexpandtab                    " use tabs
set smarttab                       " use smart tabbing
set shiftwidth=4                   " tab width (indentation)
set tabstop=4                      " tab stop width
colorscheme mlessnau               " colour schema
syntax on                          " enable syntax highlighting
filetype plugin indent on          " enable filetype based plugins and indentation

autocmd VimEnter * NERDTree        " open NERDTree on startup

" mappings
cmap w!! %!sudo tee > /dev/null %
map <CR> O<Esc>j
map ci_ :set iskeyword-=_<CR>ciw<Esc>:set iskeyword+=_<CR>a
map <space> /
map <c-space> ?
if $TERM =~ '^screen-256color'
  map <Esc>OH <Home>
  map! <Esc>OH <Home>
  map <Esc>OF <End>
  map! <Esc>OF <End>
endif

" commands (by whilefalse)
:command! -range=% Snip '<,'>w! /tmp/snippet
:command! Unsnip r /tmp/snippet
:command! Q qa!
:command! WQ wqa!
