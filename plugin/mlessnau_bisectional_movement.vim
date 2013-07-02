function! BsMoveRight()
  let l:col = col('.')
  let l:line = line('.')

  execute "normal $"
  let l:colMax = col('.')

  let l:colNext = l:col + float2nr(ceil((l:colMax - l:col) * 0.5))

  call cursor(l:line, l:colNext)
endfunction

function! BsMoveLeft()
  let l:col = col('.')
  let l:line = line('.')
  let l:colNext = l:col - float2nr(ceil((l:col - 1) * 0.5))

  call cursor(l:line, l:colNext)
endfunction

map <Tab> :call BsMoveRight()<CR>
map <S-Tab> :call BsMoveLeft()<CR>
