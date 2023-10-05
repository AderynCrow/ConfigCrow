"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=
set nohlsearch
set noshowmode

"set title"
:set title titlestring=%t titlelen=70

"don't show matching parenthesies while in insert mode
au InsertEnter * NoMatchParen 
au InsertLeave * DoMatchParen 

"vim-plug"
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'shapeoflambda/dark-purple.vim'
Plug 'peit-uiberry/corvus-purple'
Plug 'unblevable/quick-scope'
Plug 'iamcco/markdown-preview.nvim'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()


" Always show lightline
set laststatus=2
let g:lightline = {
			\ 'colorscheme': 'catppuccin',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['readonly','absolutepath', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'filetype' ],
      \              [ 'gitbranch'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }



"set Colorscheme"
syntax enable
colorscheme	catppuccin-frappe

"autosave when cursor hasn't moved for 4 seconds"
:autocmd CursorHold,CursorHoldI * silent! wall

"set working directory when opening via gui file explorer"
:lcd %:p:h

"source CoC Keybinds
:so ~/Git/ConfigCrow/cocKeybinds.vim
