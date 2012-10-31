function! FormatFile()
  let cursor_x = col('.')
  let cursor_y = line('.')

  execute "normal gg=G"

  :call cursor(cursor_y, cursor_x)
endfunction

function! SanitizeLineEndings()
  let cursor_x = col('.')
  let cursor_y = line('.')

  :%s/\r?\n|\r/\n/ge

  :call cursor(cursor_y, cursor_x)
endfunction

map == :call FormatFile()<CR>
