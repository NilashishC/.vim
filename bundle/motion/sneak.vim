let g:sneak#prompt = 'Sneak: '

" case sensitivity
let g:sneak#use_ic_scs = 1

" clever repetition
let g:sneak#s_next = 1
let g:sneak#f_reset = 1
let g:sneak#t_reset = 1
" let g:sneak#absolute_dir = 1

" target selection
let g:sneak#label = 1
let g:sneak#label_esc = "\<CR>"

Shortcut! f (sneak) repeat last sneak or sneak forward onto {char}
Shortcut! F (sneak) repeat last sneak or sneak backward onto {char}
Shortcut! t (sneak) repeat last sneak or sneak forward until {char}
Shortcut! T (sneak) repeat last sneak or sneak backward until {char}
Shortcut! s (sneak) repeat last sneak or sneak forward onto {char}{char}
Shortcut! S (sneak) repeat last sneak or sneak backward onto {char}{char}
Shortcut! <Leader>s (sneak) perform new sneak forward onto {char}{char}
Shortcut! <Leader>S (sneak) perform new sneak backward onto {char}{char}
Shortcut! <Leader>f (sneak) perform new sneak forward onto {char}
Shortcut! <Leader>F (sneak) perform new sneak backward onto {char}
Shortcut! <Leader>t (sneak) perform new sneak forward until {char}
Shortcut! <Leader>T (sneak) perform new sneak backward until {char}

" 1-character enhanced 'f'
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
" visual-mode
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
" operator-pending-mode
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

" 1-character enhanced 't'
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
" visual-mode
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
" operator-pending-mode
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

" 2-character Sneak
nmap s <Plug>Sneak_s
nmap S <Plug>Sneak_S
" visual-mode
xmap s <Plug>Sneak_s
xmap S <Plug>Sneak_S
" operator-pending-mode
omap s <Plug>Sneak_s
omap S <Plug>Sneak_S

" force label-mode
map <Leader>f hlf
map <Leader>F hlF
map <Leader>t hlt
map <Leader>T hlT
map <Leader>s hls
map <Leader>S hlS
