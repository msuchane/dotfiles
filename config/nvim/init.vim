" Highlight syntax
syntax on

"" Show line numbers
" set number
"" Show the distance in line numbers from the current line
" set relativenumber
"" Show the line number in the status bar
set ruler

"" Highlight the current line
" set cursorline

" Don't split words on line breaks
set linebreak

" Tabs are converted to 4 spaces
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"" Enable automatic code indentation. A more advanced option is 'smartindent'.
"" This is the default behavior in Neovim.
" set autoindent

"" A 'modern' Backspace behavior: delete indentation and line breaks.
"" This is the default behavior in Neovim.
" set backspace=indent,eol,start

" Allow specified keys that move the cursor left/right to move to the
" previous/next line when the cursor is on the first/last character in
" the line
set whichwrap+=<,>,h,l

" Number of lines that will always be kept at the screen edge when scrolling
set so=3

" Only enable the mouse cursor for help documents
set mouse=h

" rainbow-colored parentheses; mostly useful in Lisp, otherwise I find it
" kinda distracting
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

" set background=light
" colorscheme solarized

" load filetype-specific indentation rules
filetype plugin indent on

" define some specific rules for file types
autocmd FileType html set ts=2
autocmd FileType html set shiftwidth=2
autocmd FileType html set spell spelllang=en_us
autocmd FileType xhtml set ts=2
autocmd FileType xhtml set shiftwidth=2
autocmd FileType xhtml set spell spelllang=en_us

autocmd FileType xml set ts=2
autocmd FileType xml set shiftwidth=2
autocmd FileType xml set spell spelllang=en_us

autocmd FileType docbk set ts=2
autocmd FileType docbk set shiftwidth=2
autocmd FileType docbk set spell spelllang=en_us
" See
" https://superuser.com/questions/505353/vim-is-spellchecking-in-xml-files-where-i-dont-want-it-to-and-only-there
autocmd FileType docbk syntax spell toplevel
autocmd FileType xml syntax spell toplevel

autocmd FileType asciidoc set ts=2
autocmd FileType asciidoc set shiftwidth=2
autocmd FileType asciidoc set spell spelllang=en_us

" Jump to last cursor position when opening a file unless it's invalid
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif

" colorscheme torte
set bg=light

