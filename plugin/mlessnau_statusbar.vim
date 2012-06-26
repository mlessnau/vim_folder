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
