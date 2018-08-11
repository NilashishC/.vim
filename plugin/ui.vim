set number                     " show line numbers
set relativenumber             " ... relative to cursor
set novisualbell               " don't flash the screen
set laststatus=2               " always show status line
set showcmd                    " display incomplete commands
set ruler                      " show the cursor position all the time
set list                       " display otherwise invisible characters
set listchars=tab:\\_,extends:>,precedes:<,nbsp:%
set fillchars=fold:\ ,vert:\   " unobtrusive folds and vertical splits
set shortmess+=I               " skip splash screen when starting Vim
set confirm                    " ask before doing anything destructive
set synmaxcol=256              " don't syntax highlight very long lines
set lazyredraw                 " skip rendering during macro execution

" color entire statusline to indicate we're in insert mode
augroup ui_statusline_colors
  autocmd!
  autocmd InsertEnter  * highlight! link StatusLine DiffAdd
  autocmd InsertChange * highlight! link StatusLine DiffChange
  autocmd InsertLeave  * highlight! link StatusLine NONE
augroup END
