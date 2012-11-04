" Deletes parts of camel or snake case identifiers (at cursor position)
function! DeleteInCase()
  let cursor_x = col('.')
  let cursor_y = line('.')

  execute "normal wb"

  let identifier_x = col('.')
  let identifier_y = line('.')

  execute "normal \"cyiw"

  let identifier = @c

  let upper_snake_case_pattern = '^[A-Z0-9_]+$'
  let lower_snake_case_pattern = '^[a-z0-9_]*$'
  let upper_camel_case_pattern = '^[A-Z][a-z0-9]*\([A-Z0-9][a-z0-9]*\)*$'
  let lower_camel_case_pattern = '^[a-z][a-z0-9]*\([A-Z0-9][a-z0-9]*\)*$'

  if !empty(matchstr(identifier, upper_snake_case_pattern)) || !empty(matchstr(identifier, lower_snake_case_pattern))
    call cursor(cursor_y, cursor_x)
    set iskeyword-=_
    execute "normal diw"
    set iskeyword+=_
  elseif !empty(matchstr(identifier, upper_camel_case_pattern)) || !empty(matchstr(identifier, lower_camel_case_pattern))
    let identifier_parts = []
    let identifier_part = ''
    let identifier_length = len(identifier)
    let identifier_offset = 0

    while identifier_offset < identifier_length
      let identifier_part = identifier_part . identifier[identifier_offset]

      if identifier_offset + 1 < identifier_length && !empty(matchstr(identifier[identifier_offset + 1], '^[A-Z]$'))
        :call extend(identifier_parts, [identifier_part])
        let identifier_part = ''
      endif

      let identifier_offset = identifier_offset + 1
    endwhile

    call extend(identifier_parts, [identifier_part])

    let identifier_offset = 0
    let identifier_part_iterator = 0
    let identifier_part_count = len(identifier_parts)

    while identifier_offset < identifier_length
      if identifier_offset + len(identifier_parts[identifier_part_iterator]) > cursor_x - identifier_x
        if !empty(matchstr(identifier_parts[identifier_part_iterator], '^[A-Z]$'))
          let identifier_part_iterator_min = identifier_part_iterator
          let identifier_part_iterator_max = identifier_part_iterator

          while 0 < identifier_part_iterator_min && !empty(matchstr(identifier_parts[identifier_part_iterator_min - 1], '^[A-Z]$'))
            let identifier_part_iterator_min = identifier_part_iterator_min - 1
          endwhile

          while identifier_part_iterator_max + 1 < identifier_part_count && !empty(matchstr(identifier_parts[identifier_part_iterator_max + 1], '^[A-Z]$'))
            let identifier_part_iterator_max = identifier_part_iterator_max + 1
          endwhile

          let identifier_offset = identifier_offset - (identifier_part_iterator - identifier_part_iterator_min)

          while identifier_part_iterator_max >= identifier_part_iterator_min
            call remove(identifier_parts, identifier_part_iterator_max)
            let identifier_part_iterator_max = identifier_part_iterator_max - 1
          endwhile
        else
          call remove(identifier_parts, identifier_part_iterator)
        endif

        let @c = join(identifier_parts, '')
        execute "normal viw\"cp"
        call cursor(identifier_y, identifier_x + identifier_offset)
        return
      endif

      let identifier_offset = identifier_offset + len(identifier_parts[identifier_part_iterator])
      let identifier_part_iterator = identifier_part_iterator + 1
    endwhile
  endif
endfunction

" Same as DeleteInCase except that it starts the insert mode afterwards
function! ChangeInCase()
  call DeleteInCase()

  let cursor_x = col('.')
  execute "normal $"

  if cursor_x > col('.')
    let cursor_x = cursor_x + 1
  endif

  startinsert
  call cursor(line('.'), cursor_x)
endfunction

map cic :call ChangeInCase()<CR>
