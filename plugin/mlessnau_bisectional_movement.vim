function! BsMoveRight()
  let cursor_x = col('.')
  execute "normal $"
  call cursor(line('.'), cursor_x + (col('.') - cursor_x) / 2)
endfunction

function! BsMoveLeft()
  call cursor(line('.'), col('.') - (col('.') - 1) / 2)
endfunction

map <Tab> :call BsMoveRight()<CR>
map <S-Tab> :call BsMoveLeft()<CR>
