set clipboard+=unnamedplus

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()