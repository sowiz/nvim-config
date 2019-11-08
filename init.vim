" vim-plug
    call plug#begin('~/.local/share/nvim/plugged')

        Plug 'mattn/emmet-vim'

    call plug#end()

" Enable syntax highlighting
    syntax enable

" Load plugin and indent file for specific file types
    filetype plugin indent on
    set autoindent

" This is a list of directories which will be searched when using the |gf|, [f, ]f, ^Wf, |:find|, |:sfind|, |:tabfind| and other commands
" += means append. ** matches anything, including nothing, recurses into directories
    set path+=**

" List of patterns to ignore when expanding wildcards
    set wildignore=*/node_modules/*

" When 'wildmenu' is on, command-line completion operates in an enhanced mode
    set wildmenu

" Have the unnamed and + register be the same
" The + register accesses X11 clipboard (requires X11-aware Vim)
    set clipboard=unnamedplus

" Relative line numbers
    set number relativenumber

" Intuitive splits
    set splitbelow splitright

" Emphasize cursoline
    set cursorline

" For coding
    set nowrap
    set foldmethod=indent
    set expandtab shiftwidth=4 smarttab

" Delete trailing whitespace  on save
    autocmd BufWritePre * %s/\s\+$//e

" No escape delay
    set timeoutlen=1000 ttimeoutlen=0

" Write ouffer / Quit
    nmap , :w<Enter>
    nmap < :q<Enter>
    nmap <Esc> :q!

" Html
    autocmd FileType html inoremap æ &aelig;
    autocmd FileType html inoremap ø &oslash;
    autocmd FileType html inoremap å &aring;
    autocmd FileType html inoremap Æ &AElig;
    autocmd FileType html inoremap Ø &Oslash;
    autocmd FileType html inoremap Å &Aring;

" Colors
    highlight LineNr ctermfg=11 ctermbg=0
    highlight CursorLineNr ctermfg=11 ctermbg=10
    highlight CursorLine cterm=NONE ctermbg=10
    highlight Folded ctermbg=0
    highlight Visual ctermbg=10
    highlight Comment ctermfg=11
