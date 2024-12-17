" Jetpack
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
Jetpack 'nordtheme/vim'
Jetpack 'preservim/nerdtree'
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'
Jetpack 'mik-claire/colorizer-fg'
call jetpack#end()

" colorscheme
" set termguicolors
colorscheme nord

" common
set nowritebackup
set nobackup
set virtualedit=block
set backspace=indent,eol,start
set ambiwidth=double
set wildmenu
set clipboard+=unnamed

" search
set ignorecase
set smartcase
set nowrapscan
set incsearch
set hlsearch

" view
set noerrorbells
set shellslash
set showmatch matchtime=1
set cmdheight=2
set laststatus=2
set showcmd
set display=lastline
set list
set listchars=tab:^\ ,trail:~
set shiftwidth=4
set expandtab
set softtabstop=2
set showmatch
set autoindent
set smartindent
set noswapfile
set title
set number
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
syntax on
set nrformats=
set whichwrap=b,s,h,l,<,>,[,],~

" edit
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap <> <><LEFT>
inoremap '' ''<LEFT>
inoremap "" ""<LEFT>
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" vim-airline
" let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
let g:airline_section_x = airline#section#create([])
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])
let g:airline_section_error = airline#section#create([])
let g:airline_section_warning = airline#section#create([])
let g:airline#extensions#branch#enabled = 0

