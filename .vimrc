" Pathogen
execute pathogen#infect()

filetype plugin indent on

" Make backspace work
set backspace=2

" Indent if already indented
set autoindent

" Wrapping and tabs.
set tw=160 sta sts=2

set tabstop=2
set shiftwidth=2
set expandtab

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=240 guibg=red
match WhitespaceEOL /\s\+$/

" Line numbers
set number

" PLEASE STOP BEEPING OMG
set visualbell
set t_vb=

" Keep 5 line padding on cursor
set scrolloff=5

" keyword highlighting
syntax on

" Color column at 81
" set colorcolumn=81

" set color scheme to solarized
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme solarized

" Add fzf if installed using git
set rtp+=~/.fzf

" Add fzf if installed using Homebrew
set rtp+=/usr/local/opt/fzf

" to keep whitespace highlighting on recognized file types
au FileType * highlight WhitespaceEOL ctermbg=240 guibg=red

" md means markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" JSX highlighting
let g:jsx_ext_required=0

" Panes should split to the right, or to the bottom
set splitbelow
set splitright

" Leader
let mapleader = ","

" Mappings
map <Leader>t :Files<CR>
