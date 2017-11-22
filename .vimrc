set number
set autoread
set tabstop=4
set hlsearch
set incsearch

filetype indent plugin on
syntax on
set autoindent

" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
au FocusLost,WinLeave * :silent! wa

" Trigger autoread when changing buffers or coming back to vim.
au FocusGained,BufEnter * :silent! !
