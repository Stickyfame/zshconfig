call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

syntax on
set nu

  " Auto reload files when changed
  set autoread

  " Don't create useless files
  set noswapfile
  set nobackup
  set nowb

  " Hide unsaved buffers
  set hidden

  " Prevent annoying highlight on search
  set nohlsearch

  " highlight
  highlight ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$/

  autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
  autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
  autocmd InsertLeave * match ExtraWhitespace /\s\+$/
  autocmd BufWinLeave * call clearmatches()

  " Never use Ex useless mode
  nnoremap Q <ESC>

  " smart paste
  nnoremap p p=`]
  nnoremap <S-p> <S-p>=`]
