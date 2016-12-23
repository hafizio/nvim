set grepprg=ag\ --nogroup\ --nocolor
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0
nnoremap K :grep! '\b<C-R><C-W>\b'<CR>:cw<CR>
nnoremap \ :Ag<SPACE>
