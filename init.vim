call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'preservim/nerdtree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Color theme
    Plug 'morhetz/gruvbox'    
    " Status line
    Plug 'vim-airline/vim-airline'
    " Airline themes
    Plug 'vim-airline/vim-airline-themes'
    " Ok, its RUST
    Plug 'rust-lang/rust.vim'
    " Search plugin
    Plug 'ctrlpvim/ctrlp.vim'
    " Comments plugin
    Plug 'preservim/nerdcommenter'
    " COC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Nice icons for NerdTree
    Plug 'ryanoasis/vim-devicons'
    " Git diffs
    Plug 'tpope/vim-fugitive'
call plug#end()


"=====================================================
"" NERDTree settings
"=====================================================

" Keymap for open tree
map <C-n> :NERDTreeToggle<CR>
" Open file in ne wtab always
let NERDTreeMapOpenInTab='\r'
let NERDTreeShowHidden=1

"=====================================================
"" AirLine settings
"=====================================================

" Display tabs
let g:airline#extensions#tabline#enabled = 1
" COC integration enabled
let g:airline#extensions#coc#enabled = 1
" Setup theme
let g:airline_theme='deus'
" Powerline fonts
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts = 1

"=====================================================
"" COC settings
"=====================================================

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ "coc-rls"
  \ ]

"=====================================================
"" CtrlP settings
"=====================================================

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"=====================================================
"" Icons settings
"=====================================================

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:airline_powerline_fonts = 1

"=====================================================
"" General settings
"=====================================================
syntax on

let g:rustfmt_autosave = 1

set tabstop=4 softtabstop=4
set shiftwidth=4
" Convert tabs into spaces
set expandtab

set smartindent

" Wrap ine after goes after screen
set nowrap

set smartcase

set noswapfile

set undodir=~/.config/nvim/undodir
set undofile

" Show line numbers
set number

" Show whitespaces
:set list
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.

" Colorscheme
colorscheme gruvbox
set mouse=a

" Mapping keys for tabs
:map <C-Right>  :tabnext<CR>
:map <C-Left>  :tabprev<CR>

" Nerd commenter
filetype plugin on
