" les commandes a lancer quand j'arrive 
set ai
set showcmd
set bg=light
set nocompatible
set laststatus=2
set tabstop =4
syntax on
set number
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

" le header 42
 let g:user42 = 'eedy'
 let g:mail42 = 'eliot.edy@icloud.com'

" commade pour Ve
let g:netrw_browse_split=4
autocmd VimEnter *
	\ Vexplore |
	\ vertical resize -50 
nnoremap <C-up> :resize +2<cr>
nnoremap <C-down> :resize -2<cr>
nnoremap <C-right> :vertical resize +2<cr>
nnoremap <C-left> :vertical resize -2<cr>
nnoremap e <C-w>

" le mapping 
imap { {<Enter><Enter>}<Up><Tab>
imap jk <Esc>
imap [ []<Left>
imap ( ()<Left>
map ; <S-a>
map . :w<Enter>
map q <S-z><S-z>
map z <S-^>i
imap jj <C-n>

" mappint du visual mod
xmap ( di(jkp
xmap " di""<Left>jkp
xmap [ di[jkp
xmap < di<><Left>jkp
xmap ' di''<Left>jkp
xmap * di/**/<Left><left>jkp
xmap jk <Esc>

" les abréviations
abbreviate intmain #include <stdio.h><Enter>#include <stdlib.h><Enter><Enter>int	main(int argc, char **argv<right><Enter>{(void<right>argc;<Enter>(void<right>argv;
abbreviate in #include
ab inc #include <stdio.h><Enter>#include <stdlib.h><Enter>
