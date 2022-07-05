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
nnoremap <S-up> :resize +2<cr>
nnoremap <S-down> :resize -2<cr>
nnoremap <S-right> :vertical resize +2<cr>
nnoremap <S-left> :vertical resize -2<cr>
nnoremap e <C-w>

" Mapping de base sur Vim
imap jk <Esc>.
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

" Fichier Type selon l'extension du fichier editer
autocmd FileType c source ~/.vim/c.vim
autocmd FileType html source ~/.vim/html.vim
