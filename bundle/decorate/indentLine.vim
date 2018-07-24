let g:indentLine_char = '|'    " <Bar>
let g:indentLine_char = '│'    " <C-K>vv

" make indent guide lines brighter
let g:indentLine_color_tty_dark = 238
let g:indentLine_color_tty_light = 252

Shortcut toggle indentation lines
      \ nnoremap <silent> <Space>t> :IndentLinesToggle<CR>
