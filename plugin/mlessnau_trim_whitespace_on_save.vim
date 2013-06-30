function! StripTrailingWhitespace()
  let cursor_x = col('.')
  let cursor_y = line('.')

  %s/\s\+$//e

  call cursor(cursor_y, cursor_x)
endfunction

autocmd FileType sh,c,cpp,java,javascript,php,ruby,python,vim,html,yaml,textile,coffee,plaintex autocmd BufWritePre <buffer> :call StripTrailingWhitespace()
