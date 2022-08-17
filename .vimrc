nnoremap <leader>v :tabedit $MYVIMRC<cr>

set diffopt+=vertical

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'luochen1990/rainbow' " Rainbow Parentheses
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/neocomplcache'
Plug 'vim-scripts/vim-auto-save'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'crusoexia/vim-monokai'
Plug 'ap/vim-buftabline'
Plug 'romainl/vim-qf'
Plug 'romgrk/winteract.vim'
Plug 'drmingdrmer/vim-tabbar'
Plug 'andymass/vim-matchup'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'NLKNguyen/papercolor-theme'
" Initialize plugin system
call plug#end()

" Use <C-A> to clear the highlighting of :set hlsearch.
if maparg('<C-A>', 'n') ==# ''
  nnoremap <silent> <C-A> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set termguicolors
colorscheme monokai
set background=dark
set noantialias

set splitbelow
set splitright

" Better tabs
set hidden
nnoremap <C-$> :bnext<CR>
nnoremap <C-*> :bprev<CR>

nmap <leader>w :InteractiveWindow<CR>

map <leader><leader> <Plug>(easymotion-prefix)

" Automatically source vimrc on save.
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

let g:auto_save = 1  " enable AutoSave on Vim startup

"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "deus"

"look for per directory .exrc files
set exrc

" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=/private/tmp

" tell vim where to put swap files
set dir=/private/tmp

set nocp "http://www.guckes.net/vim/setup.html

set showmatch  "show matching brackets/parenthesis
set hlsearch   "highlight search terms
set ignorecase "case insensitive search
set smartcase

set encoding=utf-8
set undofile
set colorcolumn=80

nnoremap <SPACE> <Nop>
let mapleader=" "
"git gutter

" vim-quickscope
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

set updatetime=100
nmap <leader>hp <Plug>(GitGutterPreviewHunk)
nmap <leader>hn <Plug>(GitGutterNextHunk)
nmap <leader>hN <Plug>(GitGutterPrevHunk)
nmap <Leader>hs <Plug>(GitGutterStageHunk)
nmap <Leader>hu <Plug>(GitGutterUndoHunk)

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"folds
set foldmethod=syntax
set foldlevelstart=100
set foldcolumn=0

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

let g:neocomplcache_auto_completion_start_length = 3
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_max_list = 5
let g:neocomplcache_enable_insert_char_pre = 1

let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_linters = { 'javascript': ['eslint'] }

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0
let g:netrw_liststyle = 3

let g:rainbow_active = 1

set mouse=a
set number
set title
syntax on
"Highlight trailing whitespaces
autocmd Syntax * syn match TrailingWhitespace /\s\+$/
autocmd Syntax * highlight def link TrailingWhitespace Error
"Remove trailing whitespaces for certain files when saving
autocmd FileType css,sass,scss,html,hbs,c,cpp,java,javascript,php,groovy,tf,typescript autocmd BufWritePre <buffer> %s/\s\+$//e

" indenting http://tedlogan.com/techblog3.html
set expandtab "hitting tab insert spaces instead of <Tab>
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nowrap " kikoo (lol)"

noremap <silent> <S-PageDown> <Esc>:tabm +1<CR>
noremap <silent> <S-PageUp> <Esc>:tabm -1<CR>

"get out of insert mode more quickly
"you'd have to be really unlucky to
"have to type "kj" in a real world
"use case
inoremap kj <Esc>

"bouger la ligne vers le bas
nnoremap <silent> <C-Down> :.m+<CR>
"bouger la ligne vers le haut
nnoremap <silent> <C-Up> :-m.<CR>k

set grepprg=rg\ --vimgrep\ --sort-files\ --max-columns\ 120

set wildignore+=.git
set wildignore+=node_modules
set wildignore+=dist
set wildignore+=coverage
set wildignore+=tmp

set relativenumber

autocmd Filetype markdown setlocal wrap

autocmd Filetype typescript setlocal suffixesadd+=.ts
autocmd Filetype typescript setlocal tabstop=2
autocmd Filetype typescript setlocal shiftwidth=2
autocmd Filetype typescript setlocal softtabstop=2
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

autocmd Filetype javascript setlocal suffixesadd+=.js
autocmd Filetype javascript setlocal tabstop=2
autocmd Filetype javascript setlocal shiftwidth=2
autocmd Filetype javascript setlocal softtabstop=2
autocmd Filetype javascript setlocal makeprg=NODE_ENV=test\ npx\ mocha\ --exit "\ --color
autocmd Filetype javascript setlocal errorformat=%E%.%#Error:\ %m,%Z%*[^(](%f:%l:%c),%-G%.%#

autocmd Filetype yaml setlocal tabstop=2
autocmd Filetype yaml setlocal shiftwidth=2
autocmd Filetype yaml setlocal softtabstop=2

set nobackup
set nocompatible
set noswapfile
set nowrap
set nowritebackup

:au FocusLost * silent! wa

nmap <leader>b :Buffers<CR>
nmap <leader>p :Files<CR>
nmap <leader>g :GFiles<CR>
nmap <leader>H :History<CR>
nmap <leader>: :History:<CR>
nmap <leader>/ :History/<CR>
nmap <leader>e :Explore<CR>
nmap <leader>f :ALEFix<CR>
nmap <leader>n :ALENext<CR>
vmap <leader>c "*y

nmap <leader>t :let lastTestFile=expand('%')<CR>:make %<CR>
nmap <leader>l :execute ':make ' . lastTestFile<CR>

highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

"vim-qf mappings
nmap <F5> <Plug>(qf_qf_toggle)
nmap ç <Plug>(qf_qf_switch)
nmap - <Plug>(qf_previous_file)
nmap _ <Plug>(qf_next_file)
nmap <C-@>  <Plug>(qf_qf_next)
nmap <C-#> <Plug>(qf_qf_previous)

"remove all trailing whitespaces with a command
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()
:noremap <Leader>w :call TrimWhitespace()<CR>

"fzf settings
" - Popup window (anchored to the bottom of the current window)
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.3, 'relative': v:true, 'yoffset': 1.0 } }
