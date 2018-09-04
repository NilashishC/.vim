" https://hackernoon.com/the-last-statusline-for-vim-a613048959b2
" https://www.reddit.com/r/vim/comments/6b7b08/my_custom_statusline
" https://github.com/bluz71/vim-moonfly-statusline

function! ColorLine(statusline) abort
  let mode = mode(1)
  let color = get(g:colorline, mode, '%#ErrorMsg#')
  return ' '. mode .' '. color . a:statusline
endfunction

let g:colorline           = {}              " from :help mode()
let g:colorline['n']      = ''              " Normal
let g:colorline['no']     = '%#DiffChange#' " Operator-pending
let g:colorline['v']      = '%#DiffText#'   " Visual by character
let g:colorline['V']      = '%#DiffText#'   " Visual by line
let g:colorline["\<C-V>"] = '%#DiffText#'   " Visual blockwise
let g:colorline['s']      = '%#WildMenu#'   " Select by character
let g:colorline['S']      = '%#WildMenu#'   " Select by line
let g:colorline["\<C-S>"] = '%#WildMenu#'   " Select blockwise
let g:colorline['i']      = '%#DiffAdd#'    " Insert
let g:colorline['R']      = '%#DiffDelete#' " Replace |R|
let g:colorline['Rv']     = '%#DiffDelete#' " Virtual Replace |gR|
let g:colorline['c']      = '%#Todo#'       " Command-line
let g:colorline['cv']     = '%#Todo#'       " Vim Ex mode |gQ|
let g:colorline['ce']     = '%#Todo#'       " Normal Ex mode |Q|
let g:colorline['r']      = '%#Todo#'       " Hit-enter prompt
let g:colorline['rm']     = '%#Todo#'       " The -- more -- prompt
let g:colorline['r?']     = '%#Todo#'       " A |:confirm| query of some sort
let g:colorline['!']      = '%#Folded#'     " Shell or external command is executing
let g:colorline['t']      = '%#DiffAdd#'    " Terminal mode: keys go to the job
let g:colorline['ic']     = '%#DiffChange#' " see :help ins-completion

augroup ColorLine
  autocmd!
  " autocmd VimEnter    * echomsg 'VimEnter'    | setlocal statusline=VimEnter
  " autocmd WinEnter    * echomsg 'WinEnter'    | setlocal statusline=WinEnter
  " autocmd BufWinEnter * echomsg 'BufWinEnter' | setlocal statusline=BufWinEnter
  " autocmd BufWinLeave * echomsg 'BufWinLeave' | setlocal statusline=BufWinLeave
  " autocmd WinLeave    * echomsg 'WinLeave'    | setlocal statusline=WinLeave

  autocmd WinEnter,BufWinEnter,VimEnter *
        \ setlocal statusline& |
        \ let statusline=&statusline |
        \ setlocal statusline=%!ColorLine(statusline)
  autocmd WinLeave,BufWinLeave *
        \ setlocal statusline&

augroup END
