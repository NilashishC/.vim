" be consistent with C and D which reach the end of line
nnoremap Y y$

" copy to attached terminal using the yank(1) script:
" https://github.com/sunaku/home/blob/master/bin/yank
silent call system('command -v yank')
if !v:shell_error
  noremap <silent> <Leader>y y:<C-U>call system('yank >/dev/tty', getreg(0))<CR>
endif
