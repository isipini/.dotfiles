set relativenumber
set number
set scrolloff=10

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



noremap o o<esc>
noremap O O<esc>



inoremap jj <esc>
nnoremap <F2> :NERDTreeToggle<cr>
nnoremap <ALT-J> <C-W><C-J>
nnoremap <ALT-K> <C-W><C-K>
nnoremap <ALT-L> <C-W><C-L>
nnoremap <ALT-H> <C-W><C-H>

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'SirVer/ultisnips'
call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<ALT-j>"
let g:UltiSnipsJumpBackwardTrigger="<ALT-k>"
let NERDTreeShowHidden=1

