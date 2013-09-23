map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" custom vundles
Bundle 'jiangmiao/auto-pairs'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'

syntax on
set number
set background=dark
colorscheme solarized
filetype plugin indent on

" Ignore bundle stuff
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '/vendor/bundle$'

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup
