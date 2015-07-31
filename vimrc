execute pathogen#infect()
syntax on
filetype plugin indent on
nmap <F2> :TagbarToggle<CR>         " mapping f2 to TagbarToggle
nmap <F3> :NERDTreeToggle<CR>       " mapping f3 to NERDTreeToggle
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
set mouse=v  "a  always use mouse n Normal mode
"v Visual mode
"i Insert mode
"c Command-line mode
"h all previous modes when editing a help file
"a all previous modes
"r for |hit-enter| and |more-prompt| prompt
let g:syntastic_check_on_open=1
let g:pydiction_location = '/home/hakits/.vim/bundle/pydiction/complete-dict'

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

