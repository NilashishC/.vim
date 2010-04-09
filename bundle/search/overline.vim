Shortcut (overline) interactive search and replace in selection or buffer
      \ nnoremap <silent> <Space>c/ :OverCommandLine %S/<CR>
      \|vnoremap <silent> <Space>c/ :<C-U>OverCommandLine '<,'>S/<CR>

Shortcut (overline) interactive search and replace for word at cursor
      \ nnoremap <silent> <Space>c* :execute 'OverCommandLine %S/'.expand('<cword>').'/'<CR>
