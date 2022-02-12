set encoding=utf-8

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved

set signcolumn=yes

" Performance Config
"
set tabstop=4
" Reference https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Show line numbers 
set number

" This will allow you to use your mouse for some operations, but it's still quite limited compared to VSCode.
set mouse=a

" Key Mapping
let mapleader = ","

" Maps jk to Esc
imap jk <Esc>



" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

noremap <C-s> <esc>:w<cr>                 " Save files in insert mode by pressing Ctrl + s
nnoremap <C-s> :w<cr>                      " Save files in normal mode by pressing Ctrl + s
inoremap <C-d> <esc>:wq!<cr>               " Save and exit in insert mode by pressing Ctrl + d
nnoremap <C-d> :wq!<cr>                    " Save and exit in normal mode by pressing Ctrl + d
inoremap <C-q> <esc>:qa!<cr>               " Quit all without saving in insert mode by pressing Ctrl + q
nnoremap <C-q> :qa!<cr>                    " Quit all without saving in normal mode by pressing Ctrl + q
inoremap <C-x> <esc>:q!<cr>                " Quit current file without saving in insert mode by pressing Ctrl + x
nnoremap <C-x> :q!<cr>                     " Quit current file without saving in normal mode by pressing Ctrl + x

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch


" Sets how many lines of history VIM has to remember
set history=1000

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * silent! checktime

nnoremap <Leader>w :w<CR>

" Enable filetype plugins
filetype plugin on
filetype indent on

" Editor

" Add a bit extra margin to the left
set foldcolumn=1

" Enable syntax highlighting
syntax enable

" Set regular expression engine automatically
set regexpengine=0

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif



" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac



call plug#begin()
	 
	Plug 'tyru/open-browser.vim' " opens url in browser
	Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
	Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
	Plug 'preservim/nerdtree'
  Plug 'airblade/vim-gitgutter'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

	Plug 'justinmk/vim-sneak' 
	Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

	" Autocompletion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set signcolumn=yes


" Setup for plugins goes here

" Commenting
" 
" Map gc to a single key for toggling comment
"
" This will map the normal mode sequence ,c to the Commentary command provided
" by the vim-commentary plugin. When you press ,c, the plugin will comment out
" the current line or selection.
nnoremap ,c :Commentary<CR>


" Map 'gc' to toggle comments in normal and visual modes
" nmap gc <Plug>Commentary
" xmap gc <Plug>Commentary
" omap gc <Plug>Commentary

" Map 'gcc' to toggle comment on the current line in normal mode
" nmap gcc <Plug>CommentaryLine



" NERDTree configuration

function! OpenNERDTreeIfFile()
  " Check if the first argument is a directory
  if argc() > 0 && isdirectory(argv(0))
    " Do not open NERDTree when starting Vim with a directory
    return
  endif

  " Open NERDTree if starting with a file or without any arguments
  if argc() == 0 || filereadable(argv(0))
    NERDTree
    " If NERDTree is the only window, start editing an empty file
    if winnr('$') == 1
      enew
    endif
  endif
endfunction

" Call the function after Vim enters
autocmd VimEnter * call OpenNERDTreeIfFile()


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Keep NERDTree open when opening a file
" autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Airline setup
let g:airline#extensions#tabline#enabled = 1
" let g:coc_node_path = '$NVM_DIR/versions/node/v18.20.1/bin/node'
let g:coc_node_path = substitute(system('which node'), '\n\+$', '', '')




" coc.nvim setup
" Use `:CocInstall <extension>` to install language servers and extensions
" Run :CocInstall [coc-tsserver, coc-html, coc-css, coc-json, coc-emmet]
noremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
" :CocConfig will open coc-settings.json for fine tuning


packloadall
" Colorscheme must be set last
try
    colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
catch
endtry
