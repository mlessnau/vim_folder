set nocompatible                   " make use of all of Vim's features
set backupdir=/tmp                 " backup file directory
set directory=/tmp                 " swap file directory
set fileencoding=utf8              " default file encoding
set t_Co=256                       " enable 256 colors
set number                         " line numbers
set wrap                           " word wrap
set scrolloff=10                   " places the current line in the middle of the window
set list lcs=tab:·\ ,trail:¶,eol:¬
set colorcolumn=80                 " put a marker at 80-th column
set cursorline                     " highlight current line
set title                          " set terminal title
set ttyfast                        " enable fast TTY support
set ttymouse=xterm2                " mouse related fix (had some issues with iterm2 on mac)
set mouse=a                        " enable mouse support
set hlsearch                       " highlight search matches
set incsearch                      " search matches as you type
"let g:NERDTreeShowHidden=1         " show hidden files in NERTree
let g:NERDTreeWinSize=40           " set NERDTree width to 50 columns
set noexpandtab                    " use tabs
set smarttab                       " use smart tabbing
set shiftwidth=4                   " tab width (indentation)
set tabstop=4                      " tab stop width
syntax on                          " enable syntax highlighting
filetype plugin indent on          " enable filetype based plugins and indentation

colorscheme mlessnau
autocmd VimEnter * NERDTree        " open NERDTree on startup

" Custom file extensions
au BufNewFile,BufRead *.phtml set filetype=html
au BufNewFile,BufRead *.ctp set filetype=html
au BufNewFile,BufRead *.ui set filetype=ruby
au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead Gemfile.lock set filetype=ruby
au BufNewFile,BufRead Rakefile set filetype=ruby
au BufNewFile,BufRead Fudgefile set filetype=ruby

" remove trailing spaces on save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd FileType h,hpp,c,cc,cpp,java,php,html,rb,ruby,python,textile,vim autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" status bar
func! STL()
  let barWidth = 25 " scroll bar width
  if line('$') > 1
    let progress = (line('.') - 1) * (barWidth - 1) / (line('$') - 1)
  else
    let progress = barWidth / 2
  endif
  let bar = repeat('-', progress) . '%l' . repeat('-', barWidth - progress - 1)
  return '%f [%{(&fenc==""?&enc:&fenc).((exists("+bomb") && &bomb)?",B":"")}%M%R%H%W] %y %=[%l,%v] 1[' . bar . ']%L'
endfun
hi def link User1 DiffAdd
hi def link User2 DiffDelete
set stl=%!STL()

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

