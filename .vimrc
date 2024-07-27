
" dein setup
let s:dein_dir = $HOME . '/.vim/bundle'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  " Load and cached toml
  " all plugins listed in toml
  call dein#load_toml(s:dein_dir . '/rc/dein.toml', {'lazy': 0})
  call dein#load_toml(s:dein_dir . '/rc/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" ================================================

" common
let ayucolor="mirage"
colorscheme ayu
" colorscheme iceberg
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
set wrapscan
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
" set list
" set listchars=tab:^\ ,trail:~
set shiftwidth=4
set expandtab
set softtabstop=2
set tabstop=2
set showmatch
set smartindent
set noswapfile
set title
set number
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>
syntax on
set nrformats=
set whichwrap=b,s,h,l,<,>,[,],~

" edit
nnoremap - <C-x>
nnoremap + <C-a>
