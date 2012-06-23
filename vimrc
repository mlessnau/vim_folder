set nocompatible
autocmd VimEnter * NERDTree              " open NERDTree on startup
"let g:NERDTreeShowHidden=1               " show hidden files in NERTree
let g:NERDTreeWinSize=40                 " set NERDTree width to 50 columns
set backupdir=/tmp                       " backup directory
set directory=/tmp                       " ?
set t_Co=256                             " enable 256 colors
set number                               " line numbers
set wrap                                 " word wrap
set list lcs=tab:·⁖,trail:¶              " whitespace symbols
set colorcolumn=80                       " put a marker at 80-th column
set cursorline                           " highlight current line
set scrolloff=100                        " places the current line in the middle of the window
set mouse=a                              " enable mouse support
set ttymouse=xterm2                      " mouse related fix (had some issues with iterm2 on mac)
set ttyfast                              " ?
colorscheme mlessnau

" Syntax highlighting
syntax on
filetype on
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
autocmd FileType h,hpp,c,cc,cpp,java,php,html,rb,ruby,python,textile autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

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
map <CR> O<Esc>j
map ci_ :set iskeyword-=_<CR>ciw<Esc>:set iskeyword+=_<CR>a

if $TERM =~ '^screen-256color'
  map <Esc>OH <Home>
  map! <Esc>OH <Home>
  map <Esc>OF <End>
  map! <Esc>OF <End>
endif

cmap w!! %!sudo tee > /dev/null %

