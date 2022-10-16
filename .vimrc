syntax on
filetype plugin indent on
" enable folding
  set foldmethod=indent
  set foldlevel=99


"spellcheck
  setlocal spell
  set spelllang=en_gb
  inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"sets
  set ts=2 sts=2 sw=2 et ai si
  set relativenumber
  set number
  set scrolloff=10
  set incsearch

"colours over column 80 
  highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  match OverLength /\%81v.\+/


"key mappings
  inoremap jj <esc>
  noremap <F2> :NERDTreeToggle<cr>
  nnoremap <space> za

"plugs
  let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
  if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

  call plug#begin()
  Plug 'preservim/NERDTree'
  let NERDTreeShowHidden=1
  Plug 'SirVer/ultisnips'
  let g:UltiSnipsExpandTrigger = '<tab>'
  let g:UltiSnipsJumpForwardTrigger = '<tab>'
  let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'airblade/vim-gitgutter'
  Plug 'tmhedberg/SimpylFold'
  let g:SimpylFold_docstring_preview = 1
  Plug 'davidhalter/jedi-vim'
  call plug#end()

