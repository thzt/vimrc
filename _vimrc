" �ļ�λ��
" $VIM/_vimrc

" Ĭ������

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

" ��������

set nu				"��ʾ�к�
"set nonu			"����ʾ�к�
set nobk			"��������ʱ�ļ�
"set bk				"������ʱ�ļ�
set noswf			"�����������ļ�
"set swf			"���������ļ�
syntax enable		"���﷨����
syntax on			"�Զ��﷨����
set mouse=a			"������֧��
set ai				"�Զ�����
set ts=4			"����tab���

" ����Vundle
" /** vundle���� **/
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles

filetype off    " ���ÿ�ʼ

set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc()

" Github��վ�Ϸ�vim-scripts�ֿ�Ĳ�����������ʽ��д
" Bundle 'tpope/vim-fugitive'

Bundle 'gmarik/vundle'

" vim-scripts�ֿ���ģ��������ʽ��д
" Bundle 'L9'

" ��������������ģ��������ʽ��д
" Bundle 'git://git.wincent.com/command-t.git'

" call vundle#end()
filetype plugin indent on    " ���ý���















