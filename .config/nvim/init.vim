" Mainsetting "
set nobackup
set noswapfile
set hidden
set showcmd
set fileencodings=iso-2022-jp,euc-j,sjis,utf-8
set fileformats=unix,dos,mac
set clipboard+=unnamed
set number
set cursorline

set expandtab
set tabstop=2
set shiftwidth=2
set smartindent
set laststatus=2

" Serching "
set ignorecase
set smartcase
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set  incsearch

" Confatable "
set smartindent
set showmatch
set virtualedit=onemore
set history=10000

" Insertmode setting "
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <silent> jj <Esc>

" Paste mode "
autocmd InsertLeave * set nopaste
nnoremap cp :set paste<CR>

"--------------dein configration--------------
if &compatible
  set nocompatible
endif

"let g:python3_host_prog ='/usr/local/bin/python3'
"let g:python_host_prog ='/usr/bin/python'

" Reset augroup "
augroup MyAutoCmd
  autocmd!
augroup END


let s:config_home	= empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:cache_home	= empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:config_dir	= s:config_home . '/nvim'
let s:dein_dir		= s:cache_home . '/dein'
let s:dein_repo_dir	= s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" Auto install dein "
if !isdirectory(s:dein_repo_dir)
	call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath

" Auto load dein plugins "
if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	call dein#load_toml(s:config_dir . '/dein/dein.toml',      {'lazy': 0})
	call dein#load_toml(s:config_dir . '/dein/dein_lazy.toml', {'lazy': 1})
	call dein#end()
	call dein#save_state()
endif

" Auto delete ddein plugins "
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
    call map(s:removed_plugins, "delete(v:val, 'rf')")
    call dein#recache_runtimepath()
endif
"----------------------------------------------
filetype plugin indent on
syntax enable
