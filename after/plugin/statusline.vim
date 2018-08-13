" https://hackernoon.com/the-last-statusline-for-vim-a613048959b2
" https://www.reddit.com/r/vim/comments/6b7b08/my_custom_statusline
" https://github.com/bluz71/vim-moonfly-statusline

function! MyStatusLine(statusline) abort
  let mode = mode(1)
  let color = get(g:mode_color, mode, '%#Error#')
  return color .' '. mode .' '. a:statusline
endfunction

let g:mode_color           = {}              " see :help mode()
let g:mode_color['n']      = ''              " Normal
let g:mode_color['no']     = '%#DiffChange#' " Operator-pending
let g:mode_color['v']      = '%#DiffText#'   " Visual by character
let g:mode_color['V']      = '%#DiffText#'   " Visual by line
let g:mode_color["\<C-V>"] = '%#DiffText#'   " Visual blockwise
let g:mode_color['s']      = '%#WildMenu#'   " Select by character
let g:mode_color['S']      = '%#WildMenu#'   " Select by line
let g:mode_color["\<C-S>"] = '%#WildMenu#'   " Select blockwise
let g:mode_color['i']      = '%#DiffAdd#'    " Insert
let g:mode_color['R']      = '%#DiffDelete#' " Replace |R|
let g:mode_color['Rv']     = '%#DiffDelete#' " Virtual Replace |gR|
let g:mode_color['c']      = '%#Todo#'       " Command-line
let g:mode_color['cv']     = '%#Todo#'       " Vim Ex mode |gQ|
let g:mode_color['ce']     = '%#Todo#'       " Normal Ex mode |Q|
let g:mode_color['r']      = '%#Todo#'       " Hit-enter prompt
let g:mode_color['rm']     = '%#Todo#'       " The -- more -- prompt
let g:mode_color['r?']     = '%#Todo#'       " A |:confirm| query of some sort
let g:mode_color['!']      = '%#Folded#'     " Shell or external command is executing
let g:mode_color['t']      = '%#DiffAdd#'    " Terminal mode: keys go to the job

augroup MyStatusLine
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter *
        \ let statusline=&statusline |
        \ setlocal statusline=%!MyStatusLine(statusline)
  autocmd WinLeave,FilterWritePost *
        \ setlocal statusline&
augroup END
