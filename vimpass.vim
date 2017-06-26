" vim-passwordmanager - simple vim based password manager
" Copyright (C) 2016 Benjamin Abendroth
" 
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
" 
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
" 
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.


" Disable the creation of swapfiles/backups
set nobackup
set noswapfile
set nowritebackup

" Don't log into viminfo
set viminfo=

" Disable undo using other files
set undodir=
set noundofile

" Folding by indention is the most beautiful solution
set foldmethod=indent

" Space width for our indention
set shiftwidth=1

" All should be folded on start
set foldlevel=0

" Auto re-fold when leaving folded area
set foldclose=all

" We don't care about line numbers
set nonumber

" Again, we don't care about line numbers
function! MyFoldText()
   return substitute(getline(v:foldstart),"^ *","",1) . " "
endfunction

set foldtext=MyFoldText()


" Syntax Stuff
syn on

" First line contains master password, censor it
"syn region FirstLine start=/\%1l/ end=/\%2l/
"hi def FirstLine ctermfg=Black ctermbg=Black

syn match BLAH    "^ *Username:" 
syn match BLAH    "^ *Password:" 
syn match BLAH    "^ *Url:" 
hi def link BLAH Type

syn match PLUS    "^ *+"
hi def PLUS ctermfg=Black

syn match Comment "^ *|.*" 
