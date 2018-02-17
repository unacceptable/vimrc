" vim Pathogen for installing third party plugins (if desired)
if !empty(glob("~/.vim/autoload/pathogen.vim"))
    execute pathogen#infect()
endif

" Syntax behavior:
syntax on
filetype plugin indent on

" insert help
set paste

" Line behaviors
set number
set tabstop=4
set expandtab

" Line Spacing behaviors
set listchars=trail:•,tab:›\ ,extends:#

" Mouse behavior
if has('mouse')
    set mouse=a
endif

" Use number pad in vim
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Op 0
imap <Esc>On .
imap <Esc>OR *
imap <Esc>OQ /
imap <Esc>Ol +
imap <Esc>OS -
