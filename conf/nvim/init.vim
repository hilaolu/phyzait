set background=light
set hidden

noremap ; l
noremap k k
noremap l j
noremap j h

noremap <C-k> 8k
noremap <C-j> 0
noremap <C-l> 8j
noremap <C-;> $

noremap <C-c> ee 

imap jj <Esc>

set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://code.phyzait.moe/hilaolu/vim-plug/raw/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(stdpath('data') . '/plugged')
Plug 'sainnhe/edge'
Plug 'nvim-lualine/lualine.nvim'
call plug#end()

lua require('plugins')
colorscheme edge
