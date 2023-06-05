let mapleader = " "
set number 
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
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
" nnoremap <silent> <leader>! :-1read $HOME/.vim/snippets/skeleton.html<cr>9jf<
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


" --------------------------------------- 
" --------- CUSTOM COLORSCHEME ----------
" --------------------------------------- 
highlight vimEscape guifg=#dd9046
highlight netrwSymLink guifg=#c75ae8
highlight netrwExe guifg=#8bcd5b
highlight vimContinue guifg=#dd9046
highlight vimFuncSID guifg=#dd9046
highlight netrwClassify guifg=#4fa6ed
highlight vimNotation guifg=#dd9046
highlight CursorLineNR ctermfg=11 guifg=NONE guibg=#2a324a
highlight CursorLine ctermfg=11 guifg=NONE guibg=#2a324a
highlight Comment guifg=#455574
highlight Normal guibg=#1A212E
highlight StatusLine guibg=#a0a8b7 guifg=#1A212E
highlight Question guifg=#cc9057
highlight Directory guifg=#4fa6ed
highlight VertSplit guifg=#2a324a guibg=#1A212E
highlight IncSearch guibg=#d99a5e
highlight EndOfBuffer guifg=#1A212E
highlight MatchParen guibg=#2a324a guifg=NONE
highlight LineNr guifg=#93a4c3
highlight Type guifg=#f65866
highlight Pmenu guifg=#e55561
highlight PmenuSel guifg=#e55561
highlight WildMenu guibg=#e55561
highlight ErrorMsg guifg=#f65866
highlight String guifg=#8bcd5b
highlight Constant guifg=#34bfd0
highlight Character guifg=#dd9046
highlight Number guifg=#dd9046
highlight Boolean guifg=#dd9046
highlight Float guifg=#dd9046
highlight Function guifg=#c75ae8
highlight Identifier guifg=#f65866
highlight Conditional guifg=#c75ae8
highlight Statement guifg=#c75ae8
highlight Repeat guifg=#c75ae8
highlight Label guifg=#c75ae8
highlight Operator guifg=#c75ae8
highlight Keyword guifg=#c75ae8
highlight Exception guifg=#c75ae8
highlight Include guifg=#c75ae8
highlight Define guifg=#c75ae8
highlight Macro guifg=#f65866
highlight Special guifg=#2a324a 
highlight Tag guifg=#8bcd5b
highlight SpecialChar guifg=#f65866
highlight Delimiter guifg=#6c7d9c
highlight Visual ctermbg=242 guibg=#2a324a guifg=NONE

" language specific colorscheme
highlight link JavaScriptBraces Delimiter
highlight link javaScriptParens Delimiter

highlight link htmlEndTag Function
highlight htmlH1 guifg=#ffffff
highlight htmlH2 guifg=#ffffff
highlight htmlH3 guifg=#ffffff
highlight htmlH4 guifg=#ffffff
highlight htmlH5 guifg=#ffffff
highlight htmlH6 guifg=#ffffff
highlight htmlTitle guifg=#ffffff


fu! WhatMode()
    if mode() == 'n'
        highlight ModeMsg guibg=#6ECB63
        return "NORMAL"

    elseif mode() == 'i'
        highlight ModeMsg guibg=#4fa6ed
        return "INSERT"

    elseif mode() == 'c'
        highlight ModeMsg guibg=#efbd5d
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



" ----------------------------------------------
" ----------- CUSTOM STATUS LINE ---------------
" ----------------------------------------------
highlight Dark guibg=#2a324a guifg=#93a4c3
highlight LightGray guibg=#a0a8b7 guifg=#1A212E
set statusline=
set statusline+=\%#ModeMsg#\ %{WhatMode()}
set statusline+=\ %#Dark#\ %F
set statusline+=\%=
set statusline+=\ %Y
set statusline+=\ %#LightGray#\ BN:%n
set statusline+=\ %#ModeMsg#\ %l:%L\ 
