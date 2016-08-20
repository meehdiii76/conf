"Set number
set nu
"Set how many lines of history VIM has to remember
set history=700
"Afficher commande en cours
set showcmd
"Ignorer la casse lors de la recherche
set ignorecase
"Color syntax on
filetype plugin indent on
syntax on

if !has('gui_running')
	set t_Co=256
endif

"Vundle part:

set nocompatible "Nécessaire
filetype off "Nécessaire

"Ajout de vundle au runtime path et initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Liste des plugins
Plugin 'gmarik/Vundle.vim' "Vundle s'auto-gère
Plugin 'kien/ctrlp.vim' "CTRL-P pour acceder a tous les fichiers du projet rapidement
Plugin 'itchyny/lightline.vim' "Status line léger
Plugin 'vim-scripts/colorizer' "Detecte les codes de couleur et les colorie enfond (exemple #C0E537)
Plugin 'sjl/badwolf' "Color scheme

"Lightline option
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

call vundle#end() "Nécessaire
filetype plugin indent on "Necéssaire

"Set badwolf colorscheme
colorscheme badwolf 
