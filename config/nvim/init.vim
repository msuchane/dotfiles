" zvýrazňovat syntax
syntax on

"" zobrazovat čísla řádků
" set number
"" zobrazovat čísla řádků, nakolik jsou vzdálené od aktuálního
" set relativenumber
"" číslo aktuálního řádku ve stavové liště
set ruler

"" zvýrazňovat aktuální řádek
" set cursorline

" nedělit slova na konci řádku
set linebreak

" taby se převádějí na čtyři mezery
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" povolit automatické odsazování. pokročilejší je 'smartindent'
" v neovim výchozí nastavení
" set autoindent

" 'moderní' chování klávesy backspace
" v neovim výchozí nastavení
" set backspace=indent,eol,start

" Allow specified keys that move the cursor left/right to move to the
" previous/next line when the cursor is on the first/last character in
" the line
set whichwrap+=<,>,h,l

" kolik řádků při posouvání nechat před kurzorem na kraji obrazovky
set so=3

" nechat myš na pokoji, kromě souborů nápovědy
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

