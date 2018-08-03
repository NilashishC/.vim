Shortcut (overline) interactive search and replace in selection or buffer
      \ nnoremap <silent> <Space>c/ :OverCommandLine %s/<CR>
      \|vnoremap <silent> <Space>c/ :<C-U>OverCommandLine '<,'>s/<CR>

Shortcut (overline) interactive search and replace for word at cursor
      \ nnoremap <silent> <Space>c* :execute 'OverCommandLine %s/'.escape(expand('<cword>'), '/').'/'<CR>
      \|vnoremap <silent> <Space>c* y:<C-U>execute 'OverCommandLine %s/'.escape(getreg(0), '/').'/'<CR>
