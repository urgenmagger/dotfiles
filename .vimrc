syntax enable
set t_Co=256


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug  'morhetz/gruvbox'
Plug  'kien/ctrlp.vim'
Plug  'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript'] }
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'Valloric/YouCompleteMe'
Plug 'leafgarland/typescript-vim'
Plug 'terryma/vim-multiple-cursors'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'
"Plug 'garbas/vim-snipmate'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdcommenter'
"Plug 'ervandew/supertab'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

"for ultisnips
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" set a map leader for more key combos
let g:mapleader = ','
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

" for nerdcommenter
" press leader and press cc

call plug#end()
" For phplint Ctrl-l.
noremap <C-l> :Phplint<CR></CR>

nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1

vmap <F2> "+y 
inoremap jj <ESC>


"for emmet
let g:user_emmet_leader_key='<C-Z>'

"for easymotion
nmap s         <Plug>(easymotion-bd-w)
vmap s         <Plug>(easymotion-bd-w)
nmap <Space>s  <Plug>(easymotion-overwin-w)


colorscheme gruvbox
set background=dark
set cursorline 
hi CursorLine term=bold cterm=bold guibg=Grey40 

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h14

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number
set scrolloff=10
set showcmd


set nocursorline
set nocursorcolumn
syntax sync minlines=256

set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set cmdheight=1 " command bar height

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set nocompatible " not compatible with vi

" make backspace behave in a sane manner
set backspace=indent,eol,start
"find a word


set noerrorbells                " No beeps
set novisualbell
set noswapfile                  " Don't use swapfile
set nobackup                   " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current
"windows
set splitbelow                  " Split horizontal windows below to the

"change curcor in insert mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
nnoremap <silent> <bs> <C-w><Left>

"for jupming out brackets in insert mode
inoremap <C-e> <C-o>A
"formatter for C language
:command Form %!astyle
