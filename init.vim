call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'eagletmt/neco-ghc'

call plug#end()


" --------------------------------------------------------------------------------------------------
"
" Airline and Airline-theme
"
set statusline+=%#warningmsg#
set statusline+=%*

let g:airline_powerline_fonts = 1
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Deoplete
"
let g:deoplete#enable_at_startup = 1
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Neco-ghc
"
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" ALE
"
let g:ale_sign_column_always = 1

highlight ALEError ctermbg=none cterm=underline
highlight ALEWarning ctermbg=none cterm=underline
highlight clear SignColumn

let g:ale_linters = {
\   'haskell': ['stack-build', 'stack-ghc-mod', 'hlint', 'hdevtools'],
\}
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" NerdTree
"
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Custom key mappings
"
map <C-n> :NERDTreeToggle<CR>
map <C-h> :set hlsearch!<CR>
imap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Separated python host
"
let g:python_host_prog=expand('~/.pyenv/versions/neovim2/bin/python')
let g:python3_host_prog=expand('~/.pyenv/versions/neovim3/bin/python3')
"
" --------------------------------------------------------------------------------------------------


" --------------------------------------------------------------------------------------------------
"
" Other settings
"
set nu
set autoindent
set cindent
set ts=4
set sw=4
set expandtab
set bs=2

set laststatus=2
set ruler
set hlsearch

if has("termguicolors")
    set termguicolors
endif

set completeopt-=preview
colorscheme base16-monokai
"
" --------------------------------------------------------------------------------------------------
