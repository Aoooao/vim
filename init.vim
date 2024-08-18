set showcmd
set relativenumber
set ruler
syntax on
set history=1000
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8
set t_Co=256
set wildmenu
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch
au FileType html,python,vim,javascript setl shiftwidth=4
au FileType html,python,vim,javascript setl tabstop=4
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
set hlsearch
filetype on
filetype plugin on
filetype indent on
set cindent
set completeopt=longest,menu
set noeb
set autowrite
set cursorline
set clipboard+=unnamed
set autoread
set scrolloff=3

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'zchee/deoplete-jedi'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdcommenter'

Plug 'sbdchd/neoformat'

Plug 'davidhalter/jedi-vim'

Plug 'scrooloose/nerdtree'

Plug 'neomake/neomake'

Plug 'machakann/vim-highlightedyank'

"Plug 'tmhedberg/SimpylFoldd'

Plug 'morhetz/gruvbox'
"Plug 'shaunsingh/solarized.nvim'
call plug#end()

let g:deoplete#enable_at_startup = 1

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

hi HighlightedyankRegion cterm=reverse gui=reverse

set background=dark
colorscheme gruvbox

let g:highlightedyank_highlight_duration = 1000 " 高亮持续时间为 1000 毫秒
