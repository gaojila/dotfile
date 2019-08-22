" For startify
let g:startify_padding_left = 50
let s:header = [
    \ "",
    \ "O~~~~~~~                   O~~   O~~~~                                 O~~           ",
    \ "O~~    O~~                 O~~ O~    O~~                        O~~ O~ O~~           ",
	\ "O~~    O~~     O~~         O~~O~~           O~~       O~~              O~~   O~~     ",
	\ "O~ O~~       O~   O~~  O~~ O~~O~~         O~~  O~~  O~~  O~~    O~~O~~ O~~ O~~  O~~  ",
	\ "O~~  O~~    O~~~~~ O~~O~   O~~O~~   O~~~~O~~   O~~ O~~    O~~   O~~O~~ O~~O~~   O~~  ",
	\ "O~~    O~~  O~        O~   O~~ O~~    O~ O~~   O~~  O~~  O~~    O~~O~~ O~~O~~   O~~  ",
	\ "O~~      O~~  O~~~~    O~~ O~~  O~~~~~     O~~ O~~~   O~~       O~~O~~O~~~  O~~ O~~~ ",
	\ "                                                             O~~~                    ",
    \ "                       [ GaoJilaVim   Author:gaojila ]                               ",
    \ "",
  \ ]

let s:footer = [
      \ '+-------------------------------------------+',
      \ '|            GaoJilaVim ^_^                 |',
      \ '|    Talk is cheap Show me the code         |',
      \ '|                                           |',
      \ '|            GitHub:gaojila                 |',
      \ '+-------------------------------------------+',
      \ ]

function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_custom_header = s:center(s:header)
let g:startify_custom_footer = s:center(s:footer)
