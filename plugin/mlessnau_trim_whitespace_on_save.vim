fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd FileType c,cpp,java,javascript,php,ruby,python,vim,html,yaml,textile,coffee autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
