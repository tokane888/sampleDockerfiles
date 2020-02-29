set autoindent
set encoding=utf-8
set expandtab
set hlsearch
set number
set shiftwidth=2
set smartindent
set tabstop=2
" プラグイン導入後もbackspaceを使用可能に
set backspace=indent,eol,start
syntax on
" gitの差分表示の更新がデフォルトだと4秒後なので100msに変更
set updatetime=100
" 改行コードCRLFを^Mで表示
set fileformats=unix
" ビープ音無効化
set visualbell t_vb=

let _curfile=expand("%:r")
if _curfile == 'Makefile'
  set noexpandtab
endif

" コピペ時のインデントずれ対策
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

