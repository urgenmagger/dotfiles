 set t_Co=256


call plug#begin('~/.vim/plugged')


"ruby
Plug 'vim-ruby/vim-ruby',
Plug 'neoclide/coc.nvim', {'branch': 'release'},
Plug 'tpope/vim-rails',
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'thaerkh/vim-indentguides'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript', 'css'] }
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'cakebaker/scss-syntax.vim'
Plug 'skamsie/vim-lineletters'
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
" press leader and press cu Uncomments the selected line

call plug#end()
Plug 'nathanaelkane/vim-indent-guides'
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
"let &t_SI = "\e[6 q"
"let &t_EI = "\e[2 q"

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

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
"reload file

nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"jump out of breackets
inoremap <leader>n <ESC>la

" session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>
"paste F2
:set pastetoggle=<F2>


"for ruby
map <F7> gg=G<C-o><C-o>
syntax on
filetype plugin indent on
filetype on
filetype indent on
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

"cot tab trigger
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

"jupm to directory from current file nerdtree
"it id working link - https://superuser.com/questions/195022/vim-how-to-synchronize-nerdtree-with-current-opened-tab-file-path
"working with session
map <leader>r :NERDTreeFind<cr>

map <silent>L <Plug>LineLetters
"
set wildignore=*/node_modules/*,*/target/*,*/tmp/*

"copy in system buffer
noremap <Leader>y "*y
noremap <Leader>P "*p
