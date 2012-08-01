fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd FileType h,hpp,c,cc,cpp,java,php,html,rb,ruby,python,textile,vim,js,coffee,yml autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
