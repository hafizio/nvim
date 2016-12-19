let s:path = expand('<sfile>:p:h')

" Load vim-enabled plugins from plugins.vim file
call plug#begin(s:path . '/plugged')
exe 'source ' . s:path . '/plugins.vim'
call plug#end()

" Core Functions and Framework
exe 'source ' . s:path . '/custom/plugged.vim'
exe 'source ' . s:path . '/custom/janus.vim'

" Core customizations
exe 'source ' . s:path . '/custom/defaults.vim'
exe 'source ' . s:path . '/custom/mappings.vim'

" Indent
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'

" Disable netrw
let g:loaded_netrw        = 1
let g:loaded_netrwPlugin  = 1

" Theme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme onedark
let g:rehash256 = 1

" SudoEdit should ask password on terminal only
let g:sudo_no_gui=1

" System clipboard integration
set clipboard=unnamed

" Other customizations put in any of the below:
" ~/.config/nvim/custom
exe 'source ' . s:path . '/custom/strip-whitespaces.vim'

" ~/.config/nvim/custom/plugins
exe 'source ' . s:path . '/custom/plugins/ag.vim'
exe 'source ' . s:path . '/custom/plugins/airline.vim'
exe 'source ' . s:path . '/custom/plugins/ctrlp.vim'
exe 'source ' . s:path . '/custom/plugins/fugitive.vim'
exe 'source ' . s:path . '/custom/plugins/neomake.vim'
exe 'source ' . s:path . '/custom/plugins/neomake.vim'
exe 'source ' . s:path . '/custom/plugins/nerdtree.vim'
exe 'source ' . s:path . '/custom/plugins/rspec.vim'
exe 'source ' . s:path . '/custom/plugins/syntastic.vim'
