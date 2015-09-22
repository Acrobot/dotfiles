source $HOME/.basic.vim

set nocompatible              " be iMproved, required
set laststatus=2
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'ciaranm/detectindent'
Bundle 'edkolev/promptline.vim'
Bundle 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            " required
filetype plugin indent on    " required

set list lcs=trail:·,tab:»·

let g:airline_powerline_fonts = 1

let g:promptline_preset = {
        \'a' : [ promptline#slices#cwd() ],
        \'c' : [ promptline#slices#vcs_branch(), '$(git rev-parse --short HEAD 2>/dev/null)']}

let g:tmuxline_preset = {
        \'a'    : '#(who | cut -d " " -f1 | head -n 1)',
        \'win'  : '#I #W',
        \'cwin' : '#I #W',
        \'x'    : '#W',
        \'y'    : '%a',
        \'z'    : ['%F', '%R']}
