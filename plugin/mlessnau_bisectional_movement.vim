function! BsMoveRight()
  let cursor_x = col('.')
  execute "normal $"
  call cursor(line('.'), cursor_x + float2nr(ceil((col('.') - cursor_x) * 0.5)))
endfunction

function! BsMoveLeft()
  call cursor(line('.'), col('.') - float2nr(ceil((col('.') - 1) * 0.5)))
endfunction

map <Tab> :call BsMoveRight()<CR>
map <S-Tab> :call BsMoveLeft()<CR>
