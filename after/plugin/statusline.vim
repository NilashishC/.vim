" https://hackernoon.com/the-last-statusline-for-vim-a613048959b2

if !exists('g:statusline')
  let g:statusline = &statusline
  set statusline=%!MyStatusLine()
endif

function! MyStatusLine() abort
  let mode = mode(1)
  let color = get(s:mode_color, mode, 9)
  return '%'. color .'*'. mode .' '. g:statusline
endfunction

let s:mode_color = {}          " from :help mode()
let s:mode_color['n']      = 1 " Normal
let s:mode_color['no']     = 2 " Operator-pending
let s:mode_color['v']      = 5 " Visual by character
let s:mode_color['V']      = 5 " Visual by line
let s:mode_color["\<C-V>"] = 5 " Visual blockwise
let s:mode_color['s']      = 6 " Select by character
let s:mode_color['S']      = 6 " Select by line
let s:mode_color["\<C-S>"] = 6 " Select blockwise
let s:mode_color['i']      = 3 " Insert
let s:mode_color['R']      = 4 " Replace |R|
let s:mode_color['Rv']     = 4 " Virtual Replace |gR|
let s:mode_color['c']      = 7 " Command-line
let s:mode_color['cv']     = 7 " Vim Ex mode |gQ|
let s:mode_color['ce']     = 7 " Normal Ex mode |Q|
let s:mode_color['r']      = 7 " Hit-enter prompt
let s:mode_color['rm']     = 7 " The -- more -- prompt
let s:mode_color['r?']     = 7 " A |:confirm| query of some sort
let s:mode_color['!']      = 8 " Shell or external command is executing
let s:mode_color['t']      = 3 " Terminal mode: keys go to the job

highlight! link User1 StatusLine
highlight! link User2 DiffChange
highlight! link User3 DiffAdd
highlight! link User4 DiffDelete
highlight! link User5 DiffText
highlight! link User6 WildMenu
highlight! link User7 Todo
highlight! link User8 Folded
highlight! link User9 Error

" TODO: StatuslineNC colors are not appearing correctly for unfocused windows
