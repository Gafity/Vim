call plug#begin()
" Plugins aqui"
Plug 'catppuccin/nvim', { 'as': 'catppuccin' },
Plug 'vim-airline/vim-airline',
Plug 'vim-airline/vim-airline-themes',
Plug 'ryanoasis/vim-devicons',
Plug 'sheerun/vim-polyglot',
Plug 'airblade/vim-gitgutter',
Plug 'editorconfig/editorconfig-vim',
Plug 'itchyny/lightline.vim',
Plug 'junegunn/fzf',
Plug 'junegunn/fzf.vim',
Plug 'mattn/emmet-vim',
Plug 'scrooloose/nerdtree',
Plug 'terryma/vim-multiple-cursors',
Plug 'tpope/vim-eunuch',
Plug 'tpope/vim-surround',
Plug 'w0rp/ale',
Plug 'jiangmiao/auto-pairs'


call plug#end()





" Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on            " Enable syntax highlight
set nu               " Enable line numbers
set tabstop=4        " Show existing tab with 4 spaces width
set softtabstop=4    " Show existing tab with 4 spaces width
set shiftwidth=4     " When indenting with '>', use 4 spaces width
set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=8      " Minimum number of lines to keep above and below the cursor
set colorcolumn=100  " Draws a line at the given line to keep aware of the line size
set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=2      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any



" Theme """""""""""
colorscheme catppuccin-frappe
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif




" Remaps """"""""""
" remaps aqui




" autocmd """"""""""
" autocmds aqui


" EMMET """""""""""""""""""""""""""""""""""""
	let g:user_emmet_install_global = 0
	autocmd FileType html,css EmmetInstall
	
	let g:user_emmet_settings = {
\  'html': {
\    'default_attributes': {
\      'meta:charset': {'charset': 'UTF-8'},
\      'meta:viewport': {'content': 'width=device-width, initial-scale=1.0'},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\                ."<html lang=\"${lang}\">\n"
\                ."<head>\n"
\                ."\t<meta charset=\"${charset}\">\n"
\                ."\t<meta name=\"viewport\" content=\"${viewport}\">\n"
\                ."\t<title>${1:Document}</title>\n"
\                ."</head>\n"
\                ."<body>\n\t${0}\n</body>\n"
\                ."</html>",
\    },
\  },
\  'variables': {
\    'lang': 'en',  
\    'charset': 'UTF-8',
\    'viewport': 'width=device-width, initial-scale=1.0',
\  },
\}	






" JIANGMIAO """""""""""""""""""""""""""""""""""""
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`'}
let g:AutoPairsShortcutToggle = '<M-p>'  " Alt+p para ligar/desligar

