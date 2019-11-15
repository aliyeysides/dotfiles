" Gotta be first
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" ----- Making Vim look good ------------------------------------------
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ----- Vim as a programmer's text editor -----------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'universal-ctags/ctags'
Plugin 'quramy/tsuquyomi'
Plugin 'prettier/vim-prettier'
Plugin 'townk/vim-autoclose'
Plugin 'junegunn/fzf'
Plugin 'sainnhe/gruvbox-material'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-repeat'
Plugin 'robbyrussell/oh-my-zsh'
Plugin 'trkw/yarn.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

filetype plugin indent on

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set ignorecase
set autowriteall

" --- Auto write on text change ---
autocmd CursorHold,CursorHoldI * :SyntasticCheck

syntax on

set mouse=a

" ----- Plugin-Specific Settings --------------------------------------

" if you don't set this option, this color scheme will fall back to the original gruvbox
set termguicolors

" for dark version
set background=dark

colorscheme gruvbox-material

" Fzf search
set rtp+=/usr/local/opt/fzf

" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
let g:airline_powerline_fonts = 1

let g:airline_theme = 'deus'

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags

" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- quramy/tsuquyomi settings -----
" let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1

" ----- scrooloose/syntastic settings -----
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{FugitiveStatusline()}
set statusline+=%*

let g:syntastic_mode_map={'mode': 'active'} 
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_wq=0
let g:syntastic_auto_loc_list=1

" ----- syntastic checkers -----
let g:syntastic_typescript_checkers = ['eslint', 'tsuquyomi']

" ----- misc mappings -----
map! jk <Esc> " map jk to Esc
map! kj <Esc> " map kj to Esc
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
map  <C-p> :PrettierAsync<CR>
map <esc> :noh<CR>
map <TAB> :NERDTreeFocusToggle<CR>
