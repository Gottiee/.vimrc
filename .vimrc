" les commandes a lancer quand j'arrive 
set ai
set showcmd
set bg=light
set nocompatible
set laststatus=2
set tabstop =4
set undodir=/tmp//
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
map t bdwi<Left>
inoremap <C-j> <C-n>
inoremap <C-k> <C-p>
map	<tab> z<tab>jk
map <S-tab> i<tab>jk

" mappint du visual mod
xmap ( di(jkp
xmap " di""<Left>jkp
xmap [ di[jkp
xmap < di<><Left>jkp
xmap ' di''<Left>jkp
xmap * di/**/<Left><left>jkp

" plugin ctrl P
"
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(o)$',
  \ }

" les plugins

call plug#begin()
" 	vim-lsp: show arguments's fonction
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()
let g:lsp_diagnostics_enabled = 0         " disable diagnostics support

" Git command for vim
" :G cmd
Plug 'tpope/vim-fugitive'

call plug#end()

" Fichier Type selon l'extension du fichier editer
autocmd FileType c source ~/.vim/c.vim
autocmd FileType html source ~/.vim/html.vim
