set nocompatible
"
" vim plugin
"
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

"Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

call plug#end()

" syntax
syntax enable
" syntax on

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Use tabs instead of spaces
set expandtab

" Emphasize the search pattern
set hlsearch

" When starting a new line, indent in automatic
set autoindent

" solarized
"set background=dark
"colorscheme solarized

" Show line number
set nu

" Highlighten trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" peco + vim
" https://github.com/peco/peco/wiki/Sample-Usage
function! PecoOpen()
  for filename in split(system("find . -type f | peco"), "\n")
    if filereadable(filename)
      execute 'edit' filename
    endif
  endfor
endfunction
nnoremap <Leader>op :call PecoOpen()<CR>

