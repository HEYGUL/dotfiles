noremap <leader>v :tabedit $MYVIMRC<cr>

set diffopt+=vertical

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'editorconfig/editorconfig-vim'
" Plug 'konfekt/vim-DetectSpellLang'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bluz71/vim-nightfly-colors'
Plug 'ap/vim-buftabline'
Plug 'romainl/vim-qf'
Plug 'romgrk/winteract.vim'
Plug 'drmingdrmer/vim-tabbar'
Plug 'andymass/vim-matchup'
Plug 'leafgarland/typescript-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'neovim/nvim-lspconfig'
Plug 'ThePrimeagen/refactoring.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system
call plug#end()

let $BASH_ENV = "~/dotfiles/.bash_aliases"

" Use <C-A> to clear the highlighting of :set hlsearch.
if maparg('<C-A>', 'n') ==# ''
  nnoremap <silent> <C-A> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

set termguicolors
colorscheme nightfly

set splitbelow
set splitright

" Better tabs
set hidden
nnoremap <C-$> :bnext<CR>
nnoremap <C-*> :bprev<CR>

" Automatically source vimrc on save.
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
hi SpecialKey ctermfg=66 guifg=#649A9A
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨

" vim-svelte-plugin
let g:vim_svelte_plugin_use_typescript = 1

"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "deus"
let g:airline#extensions#ale#enabled = 1

"look for per directory .exrc files
set exrc

" tell vim to keep a backup file
set backup
" tell vim where to put its backup files
set backupdir=/private/tmp//
" tell vim where to put swap files
set dir=/private/tmp//
set directory=/private/tmp//
set undodir=/private/tmp//

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
nmap <F4> :pclose<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:coc_node_path = '/Users/GUL/.nvm/versions/node/v16.17.0/bin/node'

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

let g:ale_fixers = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['eslint', 'prettier'],
      \ 'typescript': ['eslint', 'prettier'],
      \ 'python': ['ruff', 'black', 'remove_trailing_lines'],
      \ 'elm': ['elm-format'],
      \ }

let g:ale_linters = {
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['eslint', 'prettier'],
      \ 'typescript': ['eslint', 'prettier'],
      \ 'python': ['ruff', 'black'],
      \ 'elm': ['elm-ls', 'elm-format'],
      \ }
let g:ale_elm_ls_use_global = 1
let g:ale_fix_on_save = 1
let g:auto_save_in_insert_mode = 0
let g:ale_warn_about_trailing_blank_lines = 0
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_use_neovim_diagnostics_api = 1

let g:netrw_liststyle = 3
" DetectSpellLang
let g:detectspelllang_langs = {}
let g:detectspelllang_langs.aspell = [ 'en' ]
autocmd FileType text,markdown,mail setlocal spell

set mouse=a
set number
set title
syntax on

" indenting http://tedlogan.com/techblog3.html
set expandtab "hitting tab insert spaces instead of <Tab>
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nowrap

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

" set grepprg=rg\ --vimgrep\ --sort-files\ --max-columns\ 120
" set grepformat=%f:%l:%c:%m,%f:%l:%m
" ack.vim --- {{{

" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
" --no-heading -> Don’t group matches by each file.
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case --no-heading'

" Do not auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 0

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!
cnoreabbrev ack Ack!

" Maps <leader>s so we're ready to type the search keyword
nnoremap <Leader>s :Ack!<Space>
" }}}
set wildignore+=.git
set wildignore+=node_modules
set wildignore+=dist
set wildignore+=coverage
set wildignore+=tmp

set norelativenumber

autocmd Filetype markdown setlocal wrap
autocmd Filetype csv setlocal wrap

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

set nocompatible
set nowrap

:au FocusLost * silent! wa

nmap <leader>b :Buffers<CR>
nmap <leader>p :Files<CR>
nmap <leader>g :GFiles<CR>
nmap <leader>H :History<CR>
nmap <leader>: :History:<CR>
nmap <leader>/ :History/<CR>
nmap <leader>e :NERDTreeToggle<CR>
nmap <leader>E :NERDTreeFind<CR>
nmap <leader>f :ALEFix<CR>
nmap <leader>n :ALENext<CR>
vmap <leader>c "*y
nmap <leader>c "*y
vmap <leader>p "*p
nmap <leader>p "*p

nmap <leader>t :let lastTestFile=expand('%')<CR>:make %<CR>
nmap <leader>l :execute ':make ' . lastTestFile<CR>

set signcolumn=yes

highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow

" vim-unimpared
nmap + [
nmap - ]
omap + [
omap - ]
xmap + [
xmap - ]

" CoC mappings
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gI <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

"vim-qf mappings
nmap <F5> <Plug>(qf_qf_toggle)
nmap ç <Plug>(qf_qf_switch)
nmap - <Plug>(qf_previous_file)
nmap _ <Plug>(qf_next_file)
nmap <C-@> <Plug>(qf_qf_next)
nmap <C-#> <Plug>(qf_qf_previous)

autocmd QuickFixCmdPost *grep* cwindow

"fzf settings
" - Popup window (anchored to the bottom of the current window)
let g:fzf_layout = { 'window': { 'width': 1.0, 'height': 0.3, 'relative': v:true, 'yoffset': 1.0 } }

" LSP
lua << EOF
-----------------
-- Refactoring --
-----------------
require('refactoring').setup({})
-- Remaps for the refactoring operations currently offered by the plugin
vim.api.nvim_set_keymap("v", "<leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>rf", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>rv", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("v", "<leader>ri", [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})

-- Extract block doesn't need visual mode
vim.api.nvim_set_keymap("n", "<leader>rb", [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]], {noremap = true, silent = true, expr = false})
vim.api.nvim_set_keymap("n", "<leader>rbf", [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]], {noremap = true, silent = true, expr = false})

-- Inline variable can also pick up the identifier currently under the cursor without visual mode
vim.api.nvim_set_keymap("n", "<leader>ri", [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]], {noremap = true, silent = true, expr = false})
---------
-- LSP --
---------
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>d', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'elmls', 'html', 'tsserver', 'rust-analyzer' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
EOF

" Expand %% to current file's work directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Filetype specific settings
augroup vimrc
    autocmd BufNewFile,BufRead EDIT_PR_MSG_* setlocal filetype=gitcommit tw=0 spell
    autocmd BufNewFile,BufRead neomutt-* setlocal spell
    autocmd BufNewFile,BufRead *.html setlocal spell
    autocmd BufNewFile,BufRead *.py setlocal spell foldlevel=3
    autocmd BufNewFile,BufRead *.jsx? setlocal spell
    autocmd BufNewFile,BufRead *.md,*.rst,*.txt setlocal spell suffixesadd=.rst
    autocmd BufNewFile,BufRead *.snap setlocal syntax=html
    autocmd BufNewFile,BufRead *.txt setlocal syntax=rst
    autocmd BufNewFile,BufRead PKGBUILD setlocal noexpandtab sw=4 ts=4
    autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal textwidth=72 spell
    autocmd BufNewFile,BufRead PULLREQ_EDITMSG setlocal tw=0 spell
augroup END
