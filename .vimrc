set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'bkad/CamelCaseMotion'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'vim-gitgutter'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-surround'
" The following are examples of different formats supported.

" Keep " Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your " Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :" PluginList       - lists configured plugins
" :" PluginInstall    - installs plugins; append `!` to update or just :" PluginUpdate
" :" PluginSearch foo - searches for foo; append `!` to refresh local cache
" :" PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-" Plugin stuff after this line
:syntax enable
:set nu
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
set path=$PWD/**
set laststatus=2
set encoding=utf-8
set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
let g:airline_powerline_fonts=1
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-S-Left> :tabprevious<CR>
nnoremap <C-S-Right> :tabnext<CR>
nnoremap <silent> <Esc>[1;10D :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <Esc>[1;10C :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
let mapleader=" "
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
  else
    set rnu
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
