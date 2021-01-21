"mainsetting"
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

"serching"
set ignorecase
set smartcase
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set  incsearch

"confatable
set smartindent
set showmatch
set virtualedit=onemore
set history=10000

"insertmode setting"
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <silent> jj <Esc>

"paste mode
autocmd InsertLeave * set nopaste
nnoremap cp :set paste<CR>


