if exists("loaded_matchit")
  let b:match_ignorecase = 0

  let b:match_words = '{:},[:],(:),'
	\ . '\%({{\)\@<=[#^]\s*\([-0-9a-zA-Z_?!/.]\+\)\s*}}'
	\ . ':'
	\ . '\%({{\)\@<=/\s*\1\s*}}'
endif

setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab
setlocal autoindent
setlocal smarttab
