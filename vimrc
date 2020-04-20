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

syntax on
set number
set background=dark
set shiftwidth=2
colorscheme smyck
filetype plugin indent on
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" Ignore bundle stuff
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '/vendor/bundle$'

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup
