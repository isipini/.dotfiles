set relativenumber
set number
set scrolloff=10

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


inoremap jj <esc>
noremap <F2> :NERDTreeToggle<cr>

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'

call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<ALT-j>"
let g:UltiSnipsJumpBackwardTrigger="<ALT-k>"
let NERDTreeShowHidden=1

