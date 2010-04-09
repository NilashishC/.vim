let g:skip_default_textobj_word_column_mappings = 1

Shortcut! vao (textobj) select around vertical word column
Shortcut! vio (textobj) select inside vertical word column

Shortcut! vaO (textobj) select around vertical WORD column
Shortcut! viO (textobj) select inside vertical WORD column

xnoremap <silent> ao :<C-u>call TextObjWordBasedColumn("aw")<cr>
xnoremap <silent> aO :<C-u>call TextObjWordBasedColumn("aW")<cr>
xnoremap <silent> io :<C-u>call TextObjWordBasedColumn("iw")<cr>
xnoremap <silent> iO :<C-u>call TextObjWordBasedColumn("iW")<cr>
onoremap <silent> ao :call TextObjWordBasedColumn("aw")<cr>
onoremap <silent> aO :call TextObjWordBasedColumn("aW")<cr>
onoremap <silent> io :call TextObjWordBasedColumn("iw")<cr>
onoremap <silent> iO :call TextObjWordBasedColumn("iW")<cr>
