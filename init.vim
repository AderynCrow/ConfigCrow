"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set mouse=

"vim-plug"
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'shapeoflambda/dark-purple.vim'
Plug 'peit-uiberry/corvus-purple'
Plug 'unblevable/quick-scope'
Plug 'iamcco/markdown-preview.nvim'
Plug 'itchyny/lightline.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()


" Always show lightline
set laststatus=2
"let g:lightline = {
"      \ 'colorscheme': 'dark_purple',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             ['readonly', 'filename', 'modified' ] ],
"      \   'right': [ [ 'lineinfo' ],
"      \              [ 'filetype' ],
"      \              [ 'gitbranch'] ]
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'fugitive#head'
"      \ },
"      \ }

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

"let g:airline_theme = 'catppuccin'
"let g:lightline = {'colorscheme': 'catppuccin'}

:set noshowmode


"auto closing brackets
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O


"set Colorscheme"
syntax enable
colorscheme	catppuccin-frappe

"don't hignlight search words
:set nohlsearch

"don't show matching parenthesies while in insert mode
au InsertEnter * NoMatchParen 
au InsertLeave * DoMatchParen 

"autosave when cursor hasn't moved for 4 seconds"
:autocmd CursorHold,CursorHoldI * silent! wall

"set working directory when opening via gui file explorer"
:lcd %:p:h

"set title"
:set title titlestring=%t titlelen=70

"source CoC Keybinds
:so ./cocKeybinds.vim
