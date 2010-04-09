let anyfold_activate=1
let anyfold_fold_comments=1

Shortcut! za (AnyFold) toggle fold at cursor: open and close
let anyfold_toggle_key='za'

" unfolds the line in which the cursor is located when opening a file
autocmd User anyfoldLoaded normal! zv
