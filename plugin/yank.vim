" be consistent with C and D which reach the end of line
nnoremap Y y$

" copy to attached terminal using the yank(1) script:
" https://github.com/sunaku/home/blob/master/bin/yank
noremap <silent> <Leader>y y:<C-U>call Yank(getreg(0))<CR>
function! Yank(...) abort
  let output = system('yank', a:000)
  if v:shell_error
    echoerr output
  else
    call writefile([output], '/dev/tty', 'b')
  endif
endfunction
