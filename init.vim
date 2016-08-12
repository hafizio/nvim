let s:path = expand('<sfile>:p:h')

" Load vim-enabled plugins from plugins.vim file
call plug#begin(s:path . '/plugged')
exe 'source ' . s:path . '/plugins.vim'
call plug#end()

" RSpec
let g:rspec_command = '!bundle exec rspec {spec}'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Airline
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Indent
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'

" Disable netrw /
let g:loaded_netrw        = 1
let g:loaded_netrwPlugin  = 1

" NerdTree
map <silent> <C-n> :NERDTreeFocus<CR>
let NERDTreeShowHidden=1

" SudoEdit should ask password on terminal only
let g:sudo_no_gui=1

" Theme activation
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme kolor
set background=dark
let g:rehash256 = 1

" System clipboard integration
set clipboard=unnamed

"
" Other customizations put in ~/.config/nvim/custom
"

exe 'source ' . s:path . '/custom/defaults.vim'
exe 'source ' . s:path . '/custom/nerdtree.vim'
exe 'source ' . s:path . '/custom/strip-whitespaces.vim'
