" 文件位置
" $VIM/_vimrc

" 默认配置

set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" 个人配置

set nu				"显示行号
"set nonu			"不显示行号
set nobk			"不产生临时文件
"set bk				"产生临时文件
set noswf			"不产生交换文件
"set swf			"产生交换文件
syntax enable		"打开语法高亮
syntax on			"自动语法高亮
set mouse=a			"添加鼠标支持
set ai				"自动缩进
set ts=4			"设置tab宽度

" 配置Vundle
" /** vundle命令 **/
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles

filetype off    " 配置开始

set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc()

" Github网站上非vim-scripts仓库的插件，按下面格式填写
" Bundle 'tpope/vim-fugitive'

Bundle 'gmarik/vundle'

" vim-scripts仓库里的，按下面格式填写
" Bundle 'L9'

" 非上面两种情况的，按下面格式填写
" Bundle 'git://git.wincent.com/command-t.git'

" call vundle#end()
filetype plugin indent on    " 配置结束















