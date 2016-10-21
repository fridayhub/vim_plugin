execute pathogen#infect()
" python-mode start
" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()
let g:pymode = 1
let g:pymode_options_colorcolumn = 0 "could trun off red line in the middle
let g:pymode_indent = 1
let g:pymode_folding = 0  "don't folding function
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K' "Jump to define doc
let g:pymode_virtualenv = 1   "automatic virtualenv detection 
let g:pymode_rope_goto_definition_bind = '<C-]>' "ctrl+] go to define

" python-mode end
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
set laststatus=2
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项

let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
inoremap <leader>; <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

highlight SpellBad term=reverse ctermbg=170 gui=undercurl guisp=Red  "语法错误颜色
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处

"let OmniCpp_DefaultNamespaces = ["_GLIBCXX_STD"]
let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1  "是否显示访问控制信息(‘+‘, ‘-‘, ‘#‘)
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口 
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,longest
set tags+=/home/jinghang/.vim/bundle/stdcpp.tags   "config for c++

let g:ycm_global_ycm_extra_conf='/home/jinghang/.vim/bundle/ycm_extra_conf.py'

"imx6_kernel
"set tags=/home/hang/Open_project/security/logkeys/src/tags


