let mapleader = " "
set number 
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set autoindent
set autowrite
set smartcase
set hidden
set noerrorbells
set nowrap
set incsearch
set nohlsearch
set timeout
set timeoutlen=300
set updatetime=250
set history=200
set noshowmode
set path+=**
set laststatus=2
set termguicolors
colorscheme slate
syntax on

" Set cursor shape
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


" My custom keymap
nnoremap G Gzz
nnoremap H Hzz
nnoremap L Lzz

" toggle filetree
nnoremap <silent> <leader>e <esc>:Lex 20<cr>
" html template
nnoremap <silent> <leader>! :-1read $HOME/.vim/snippets/skeleton.html<cr>9jf<
" show currently opened buffers
nnoremap <silent> <leader><space> :buffers<cr>
" auto pair brackets && quotations
inoremap <silent> { {}<esc>i
inoremap <silent> [ []<esc>i
inoremap <silent> ( ()<esc>i
" inoremap <silent> ` ``<esc>i
" inoremap <silent> ' ''<esc>i
" inoremap <silent> " ""<esc>i
" inoremap <silent> < <><esc>i


" Tweaks for file browsing
let g:netrw_banner = 0 " disable explorer banner
let g:netrw_altv = 1 " open in prior window
let g:netrw_list_hide = netrw_gitignore#Hide() " hide all listed file in .gitignore
let g:netrw_liststyle = 3 " explorer tree view

" Set language specific indentation
autocmd FileType javascript,typescript,html,css setlocal shiftwidth=2 softtabstop=2 tabstop=2

" Set custom colorscheme
highlight StatusLine guibg=#323641
highlight Comment guifg=#97ca72
highlight Normal guibg=#1A212E
highlight Visual guibg=#a0a8b7 guifg=NONE
highlight Question guifg=#cc9057
highlight Directory guifg=#4fa6ed
highlight VertSplit guifg=#a0a8b7 guibg=#1A212E
highlight IncSearch guibg=#d99a5e
highlight EndOfBuffer guifg=#1A212E
highlight MatchParen guibg=#a0a8b7 guifg=#1A212E
highlight LineNr guifg=#a0a8b7
highlight Type guifg=#bf68d9

fu! WhatMode()
    if mode() == 'n'
        highlight ModeMsg guibg=#6ECB63
        return "NORMAL"

    elseif mode() == 'i'
        highlight ModeMsg guibg=#4fa6ed
        return "INSERT"

    elseif mode() == 'c'
        highlight ModeMsg guibg=#cc9057
        return "COMMAND"

    elseif mode() == 'R'
        highlight ModeMsg guibg=#e55561
        return "REPLACE"

    elseif mode() == 'v'
        highlight ModeMsg guibg=#bf68d9
        return "VISUAL"

    elseif mode() == 'V'
        highlight ModeMsg guibg=#bf68d9
        return "V-LINE"

    else
        highlight ModeMsg guibg=#bf68d9
        return "V-BLOCK"
    endif
endf

" custom vimline colorscheme
highlight Dark guibg=#323641 guifg=#a0a8b7
highlight LightGray guibg=#a0a8b7 guifg=#1A212E
set statusline=
set statusline+=\%#ModeMsg#\ %{WhatMode()}
set statusline+=\ %#Dark#\ %F
set statusline+=\%=
set statusline+=\ %Y
set statusline+=\ %#LightGray#\ BN:%n
set statusline+=\ %#ModeMsg#\ %l:%L\ 
