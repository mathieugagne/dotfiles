" Pathogen
execute pathogen#infect()

filetype plugin indent on

" Wrapping and tabs.
set tw=160 sta sts=2

set tabstop=2
set shiftwidth=2
set expandtab
set hidden

set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type


" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=240 guibg=red
match WhitespaceEOL /\s\+$/

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set t_vb=                " don't beep

set nobackup
set noswapfile

" Keep 5 line padding on cursor
set scrolloff=5

" keyword highlighting
syntax on

" Color column at 81
" set colorcolumn=81

" set color scheme to solarized
" let g:solarized_termcolors=256
" set t_Co=256
" set background=dark
" colorscheme solarized

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

" Allows to save a file if you forgot to open it with sudo
cmap w!! w !sudo tee % >/dev/null

" Force myself to use letters instead of arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap ; :

" Leader
let mapleader = ","

" Mappings
map <Leader>t :Files<CR>
" Tabularize
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap <Leader>f <Plug>(easymotion-overwin-f2)
