" ---------------------------------------------------------------------------
" Miscellaneous
" ---------------------------------------------------------------------------
filetype plugin on
filetype indent on
set autoread
set history=4096
set tabpagemax=32

" ---------------------------------------------------------------------------
" Theme and font
" ---------------------------------------------------------------------------
" colorscheme Tomorrow-Night
set gfn=Source\ Code\ Pro:h13

" ---------------------------------------------------------------------------
" Backups
" ---------------------------------------------------------------------------
set nobackup
set noswapfile
set nowritebackup

" ---------------------------------------------------------------------------
" User interface
" ---------------------------------------------------------------------------
set autoindent
set backspace=2
set cc=100
set ignorecase
"set im
set incsearch
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set nohlsearch
set nolazyredraw
set nowrap
set number
set ruler
set shiftwidth=2
set showmatch
set smartcase
set smartindent
set softtabstop=2
set tabstop=2
set whichwrap+=<,>,h,l,[,]
syntax enable
let g:ConqueTerm_Color = 1
let g:ConqueTerm_InsertOnEnter = 1
let g:ConqueTerm_CloseOnEnd = 1

" ---------------------------------------------------------------------------
" Change to select mode when selecting text
" ---------------------------------------------------------------------------
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel
set selection=inclusive

" ---------------------------------------------------------------------------
"  Strip all trailing whitespace
" ---------------------------------------------------------------------------
"autocmd BufWritePre * :%s/\s\+$//e
