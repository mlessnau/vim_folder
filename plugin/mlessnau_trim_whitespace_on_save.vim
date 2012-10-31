function! StripTrailingWhitespace()
  let cursor_x = col('.')
  let cursor_y = line('.')

  while 1
    execute "normal gg"
    if getline(line('.')) !~ '^\s*$'
      break
    end
    execute "normal dd"
    if 0 < cursor_y
      let cursor_y = cursor_y - 1
    endif
  endwhile

  while 1
    execute "normal G"
    if getline(line('.')) !~ '^\s*$'
      break
    end
    execute "normal dd"
  endwhile

  if cursor_y > line('.')
    let cursor_y = line('.')
  endif

  execute "normal $"
  if cursor_x > col('.')
    cursor_x = col('.')
  endif

  %s/\s\+$//e

  call cursor(cursor_y, cursor_x)
endfunction

autocmd FileType sh,c,cpp,java,javascript,php,ruby,python,vim,html,yaml,textile,coffee autocmd BufWritePre <buffer> :call StripTrailingWhitespace()
