" Edgar's vimrm


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'morhetz/gruvbox'
Plugin 'easymotion/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set nu

" vim-rainbow settings
" https://github.com/frazrepo/vim-rainbow
let g:rainbow_active = 1

" Use space instead of tabs
set expandtab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Set dark color theme
" https://github.com/morhetz/gruvbox
autocmd vimenter * colorscheme gruvbox
set background=dark    " Setting dark mode

" START EASYMOTION
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" END OF EASYMOTION
