let mapleader = " "
set number 
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set smartcase
set hidden
set noerrorbells
set nowrap
set incsearch
set nohlsearch
set timeout
set timeoutlen=300
set updatetime=250
set termguicolors
set history=200
colorscheme slate

" Set cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" My custom keymap
nnoremap G Gzz
nnoremap H Hzz
nnoremap L Lzz

"toggle filetree
nnoremap <silent> <leader>e <esc>:Lex<cr>
nnoremap <silent> <leader>! :-1read $HOME/.vim/snippets/skeleton.html<cr>9jf<


" Tweaks for browsing
let g:netrw_banner = 0 " disable explorer banner
let g:netrw_altv = 1 " open in prior window
let g:netrw_list_hide = netrw_gitignore#Hide()
let g:netrw_liststyle = 3 " explorer tree view

" Set language specific indentation
autocmd FileType js,ts,html,css setlocal shiftwidth=2 softtabstop=2 tabstop=2
