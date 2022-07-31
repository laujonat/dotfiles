" Basic
" set shell=/bin/zsh
set belloff=all " Annoying bell off
set encoding=utf-8
set nocompatible " Set no compatible with vi
set noswapfile

set hidden
set ruler
set laststatus=2
set number
set nocursorline
set lazyredraw
set title "Show the filename in the window title bar
set nostartofline "Make j/k respect the columns

set autoindent
set autoread
set backspace=indent,eol,start
set display+=lastline
set foldmethod=syntax
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set nofoldenable
set completeopt-=preview "Disable the preview window for completions.
set expandtab
set smarttab
set splitbelow splitright "Pane splitting
set noshowmode "The status line will show the mode.
set nowrap
set nrformats-=octal
set scrolloff=1
set sidescrolloff=5

set re=1 "Force the old regex engine on any version newer
set wildmenu
set wildmode=longest:full "<TAB> displayes longest match first

set shiftwidth=2
set softtabstop=2
set tabstop=2

set incsearch
set ignorecase
set smartcase

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_EI.="\e[1 q"

"Read/Write mappings
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>
nnoremap <C-q> :qa!<cr>

" Pressing Ctrl-u deletes text you've typed in the current line
" Ctrl-w deletes the word before the cursor, both undoable.
" This adds Ctrl-g first to start a new change
inoremap <C-U> <C-G>u<C-U>
inoremap <C-U> <C-G>u<C-U>
inoremap <C-W> <C-G>u<C-W>

" Clipboard Settings
noremap <Leader>y "*y
noremap <Leader>p "*p

" Uunset highlighting on matches
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Map buffer list
nnoremap <Leader>b :ls<CR>:b<Space>

" fzf fuzzy search
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>

" Autoreload external changes
au FocusGained,BufEnter * :checktime

" Session storage directories and viminfo
set viminfo='100,f1,<50,s10,h,n~/.config/nvim/viminfo
set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swap//

" Find snake_case - '+', '_' to convert
:nnoremap + /\w\+_<CR>
:nnoremap _ f_x~

"Execute %!python -m json.tool to format json
runtime! macros/matchit.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
  "Basics
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'tpope/vim-eunuch'
  Plug 'junegunn/vim-easy-align'
" (Optional) Multi-entry selection UI.
  Plug 'junegunn/fzf'
  Plug 'Chiel92/vim-autoformat' " vim autoformat
  Plug 'w0rp/ale'
  Plug 'tell-k/vim-autopep8'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-surround' " selection surroundings
  Plug 'scrooloose/nerdcommenter' " code commenting
  "Visuals
  Plug 'flazz/vim-colorschemes'
  Plug 'ap/vim-css-color' " CSS Vim color preview
  "Language-Specific (alphabetical by package-identifier
  Plug 'chr4/nginx.vim' " nginx configs
  Plug 'mxw/vim-jsx' " JSX highlighter (depends on underlying JS highlighter
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}

  "FZF Fuzzy Search
  Plug 'junegunn/fzf', { 'build': './install --all', 'merged': 0 }
  Plug 'junegunn/fzf.vim', { 'depends': 'fzf' }

call plug#end()

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color Scheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
syntax enable
" This line enables the true color support.
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
set background=dark

let g:jellybeans_use_lowcolor_black = 1
let g:jellybeans_overrides = {
\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\    'Comment': { 'guifg': 'cccccc' },
\}

let g:jellybeans_overrides = {
\    'MatchParen': { 'guifg': 'dd0093', 'guibg': '000000',
\                    'ctermfg': 'Magenta', 'ctermbg': '' },
\}
colorscheme jellybeans

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autopair Completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:AutoPairsShortcutJump = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'absolutepath', 'modified' ] ],
      \   'right': [ [ 'custom-lineinfo' ],
      \              [ 'custom-fileinfo' ] ],
      \ },
      \ 'inactive': {
      \   'left': [ [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'custom-lineinfo' ],
      \              [ 'custom-fileinfo' ] ],
      \ },
      \ 'component': {
      \   'custom-lineinfo': ' %3p%% ┃ %4l/%L :%3c',
      \ },
      \ 'component_function': {
      \   'custom-fileinfo': 'LightlineFileInfo',
      \   'readonly': 'LightlineReadonly',
      \ },
      \ 'tabline': {
      \   'left': [ [ 'tabs' ] ],
      \   'right': [ ],
      \ },
\ }

function! LightlineReadonly()
  return &readonly ? '∄' : ''
endfunction
function! LightlineFileInfo()
  let displayFiletype = &filetype !=# '' ? &filetype : 'no ft'
  return ' ' . displayFiletype . ' ┃  ' . &fileencoding . '[' . &fileformat . '] '
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Autocomplete and cycle from top-to-bottom of suggestions using <Tab>.
inoremap <expr><TAB> pumvisible() ? "\<c-n>" : "\<TAB>"

"<S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python Autopep 8 Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:autopep8_max_line_length=79
let g:autopep8_ignore="E501,W293,C0321"
let g:autopep8_disable_show_diff=0
let g:autopep8_on_save=1 " Autosave on save

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Automatic Whitespace Trimming and Formatting (for select filetypes)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_typescript_tslint_ignore_empty_files = 0
let g:ale_typescript_tsserver_config_path = ''
let g:ale_typescript_tsserver_executable = 'tsserver'
let g:ale_typescript_tsserver_use_global = 0

let g:jsx_ext_required = 0 "jsx highlighting

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ale Syntax & Language Specific
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'tslint'],
\}
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
