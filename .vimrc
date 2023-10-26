set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

nnoremap e <C-w>

" Mapping de base sur Vim
imap jk <Esc>
map ; <S-a>
map . :w<Enter>
map q <S-z><S-z>
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>

" mappint du visual mod
xmap ( di(jkp
xmap " di""<Left>jkp
xmap [ di[jkp
xmap < di<><Left>jkp
xmap ' di''<Left>jkp
xmap * di/**/<Left><left>jkp

map <C-h> ge
map <C-l> w
map - <S-i>- jk
