
set nocp "设置与vi的不兼容模式
set nu   "设置默认显示行号
set magic 
set ai "打开普通文件类型的自动缩进
set sw=4 "自动缩进的时候，缩进尺寸为四个空格
set ts=4  "tab宽度为四个字符
set lbr "尽量不再单词中间断行
set ambiwidth=double "防止特殊字符无法显示
set dy=lastline
set ru "打开vim的状态标尺
set wildmenu "在自动补全时，将补全内容使用一个漂亮的单行菜单形式显示出来
set hls is "搜索结果高亮显示
colo elflord   "主题
sy on "语法高亮
set hlsearch
set showmatch "使用括号时，显示相对应的括号
set whichwrap=h,l,b,s,,[,] "设置hl可以换行用
set encoding=utf-8
set autowrite "编辑多个文件时，使用：e或：n切换文件时可以自动保存
set cursorline "突出显示当前行
set cursorcolumn "突出显示当前列
set fenc=utf-8 "文件编码
set nowrap "设置不折叠行
set mouse=a "设置启用鼠标

" F5执行Python
" map <F5> :Autopep8<CR> :w<CR> :call RunPython()<CR>
" function RunPython()
"  let mp = &makeprg
"  let ef = &errorformat
"  let exeFile = expand("%:t")
"  setlocal makeprg=python\ -u
"  set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"  silent make %
"  copen
"  let &makeprg = mp
"  let &errorformat = ef
" endfunction

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/rainbow_parentheses.vim'
call vundle#end()
filetype plugin indent on


" kien/rainbow_parentheses.vim
let g:rbpt_colorpairs = [ ['brown', 'RoyalBlue3'], ['Darkblue', 'SeaGreen3'], ['darkgray', 'DarkOrchid3'], ['darkgreen', 'firebrick3'],['darkcyan', 'RoyalBlue3'],['darkred', 'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['brown', 'firebrick3'],['gray', 'RoyalBlue3'],['black',       'SeaGreen3'],['darkmagenta', 'DarkOrchid3'],['Darkblue',  'firebrick3'],['darkgreen', 'RoyalBlue3'],['darkcyan', 'SeaGreen3'],['darkred', 'DarkOrchid3'],['red', 'firebrick3']]
let g:rbpt_max = 16
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" auto add utf-8 in python files
function HeaderPython() 
" call setline(1, "#!/usr/bin/env python") 
call setline(1, "# -*- coding:utf-8 -*-")
" call append(1, "# -*- coding: utf-8 -*-") 
normal G 
normal o 
normal o 
endf 
autocmd bufnewfile *.py call HeaderPython() 
