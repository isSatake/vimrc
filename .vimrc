autocmd FileType javascript :compiler gjslint
autocmd QuickfixCmdPost make copen

set nocompatible               " be iMproved

filetype off
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" " required! 
" Bundle 'gmarik/vundle'
"
" "" My Bundles here:
" ""
" "" original repos on github
Bundle 'fholgado/minibufexpl.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/syntastic'
Bundle 'JavaScript-syntax'
Bundle 'Shougo/neocomplcache'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'othree/html5.vim.git'
Bundle 'css_color.vim'
Bundle 'hokaccha/vim-html5validator'

"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax enable "コードの色分け
set shiftwidth=2
set tabstop=2 "インデントをスペース
set smartindent "オートインデント
set smartcase "新しい行を作った時に高度な自動インデントを行なう
set autoindent "新しい行のインデントを現在業と同じにする
set wildmode=longest:full,list

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る

"入力補完
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
	exec "imap " . k . " " . k . "<C-N><C-P>"
endfor

imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

"入力モード時、ステータスラインのカラーを変更
augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END
