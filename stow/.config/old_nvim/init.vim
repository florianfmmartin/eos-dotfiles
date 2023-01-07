call plug#begin()

Plug 'deoplete-plugins/deoplete-lsp'
Plug 'Shougo/deoplete-nvim'
Plug 'lambdalisue/fern.vim'
Plug 'ncm2/float-preview.nvim'
Plug 'junegunn/fzf.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'neovim/nvim-lspconfig'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'rafaqz/ranger.vim'
Plug 'tomtom/tcomment_vim'
Plug 'luochen1990/rainbow'

call plug#end()

" conjure {{{
let g:conjure#log#hud#height = 1
let mapleader = ","
let maplocalleader = ","

" }}}
" deoplete.nvim {{{
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', {
\ '_': ['buffer', 'lsp'],
\})

" }}}
" fern.vim {{{
nnoremap ,ff :Fern . -drawer -toggle<CR>
function! s:init_fern() abort
  nmap <CR> l
endfunction
augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

" }}}
" float-preview.nvim {{{
let g:float_preview#docked = 0
" }}}
" fzf.vim {{{
let g:fzf_layout = {'window':{'width':1,'height':0.98}}
let g:fzf_preview_window = 'up:45%'
let g:fzf_colors =
                  \ { 'fg':      ['fg', 'Normal'],
                  \ 'bg':      ['bg', 'Normal'],
                  \ 'hl':      ['fg', 'Title'],
                  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
                  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
                  \ 'hl+':     ['fg', 'Statement'],
                  \ 'info':    ['fg', 'PreProc'],
                  \ 'gutter':  ['bg', 'Normal'],
                  \ 'border':  ['fg', 'Ignore'],
                  \ 'prompt':  ['fg', 'Conditional'],
                  \ 'pointer': ['fg', 'Exception'],
                  \ 'marker':  ['fg', 'Keyword'],
                  \ 'spinner': ['fg', 'Label'],
                  \ 'header':  ['fg', 'Comment'] }

" }}}
" gruvbox-material {{{
set termguicolors
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material

" }}}
" nvim-lspconfig {{{
lua << END
  vim.api.nvim_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  require'lspconfig'.tsserver.setup{}
  require'lspconfig'.rescriptls.setup{
    cmd = { 'node', '/home/fmartin/Code/vim-rescript/server/out/server.js', '--stdio' }
  }
  require'lspconfig'.clangd.setup{}
  require'lspconfig'.pylsp.setup{}
  require'lspconfig'.clojure_lsp.setup{}
  require'lspconfig'.racket_langserver.setup{}
  require'lspconfig'.nimls.setup{}
  require'lspconfig'.rls.setup{}
END

" }}}
" rainbow {{{
let g:rainbow_active = 1

" }}}
" ranger.vim {{{
nnoremap ,rr :RangerEdit<CR>
" }}}
" tcomment_vim {{{
let mapleader = ","
nnoremap <leader>c :TComment<CR>
vnoremap <leader>c :TComment<CR>

" }}}
" vim-airline {{{
let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox_material'
let g:airline_section_error = ''
let g:airline_section_warning = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffers_label = ''
let g:airline_section_c = '%f'
let g:airline_section_z = '%l/%L : %02c'
let g:airline#extensions#tabline#ignore_bufadd_pat = '!|defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'
let g:airline#extensions#term#enabled = 0
set noshowmode

" }}}
" vim-signify {{{
let g:signify_sign_change="~"

" }}}
" vim-slime {{{
let mapleader = ","
let g:slime_target = 'neovim'
let g:slime_no_mappings = 1
xmap <leader>ss <Plug>SlimeRegionSend
nmap <leader>sp <Plug>SlimeParagraphSend
nmap <leader>sv <Plug>SlimeConfig

" }}}
" vim-startify {{{
let g:startify_lists = [
\ { 'type': 'commands', 'header': ['   Commands']},
\ { 'type': 'sessions', 'header': ['   Sessions']},
\ { 'type': 'dir',      'header': ['   MRU']},
\ ]

let g:startify_commands = [
\ { 't': ':term' },
\ { 'r': ':RangerEdit' }
\ ]

let g:startify_custom_header = [
\ '                              _         ',
\ '       ____  ___  ____ _   __(_)___ ___ ',
\ '      / __ \/ _ \/ __ \ | / / / __ `__ \',
\ '     / / / /  __/ /_/ / |/ / / / / / / /',
\ '    /_/ /_/\___/\____/|___/_/_/ /_/ /_/ ',
\ '',
\ ]

" }}}
let mapleader = ","
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set number
set signcolumn=yes
set linebreak
set breakindent
set breakindentopt="shift:4, sbr"
set showbreak=>-->
set scrolloff=8
set cursorline
set fillchars=vert:\|
set hidden
nnoremap gt :bnext<CR>
nnoremap gb :bprevious<CR>
nnoremap ge :bdelete!<CR>
set ignorecase
set listchars=eol:¬,space:·,tab:>\ 
set list
nnoremap ; :
nnoremap : ;
inoremap <C-Space> <C-X><C-O>
nnoremap <Space> w
nnoremap <BackSpace> b
set completeopt=noselect,menuone
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
xnoremap < <<CR>gv-gv
xnoremap > ><CR>gv-gv
tnoremap <leader><leader> <C-\><C-n>
nnoremap <leader>tt :terminal<CR>
nnoremap <leader>te :e term://
nnoremap <leader>tg :e term://lazygit<CR>
autocmd TermOpen * exec "normal i"
nnoremap <leader>p :Commands<CR>
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <Esc> :w<CR>
nnoremap ,uu ggO---<Esc>O
set mouse=a
augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=300 }
augroup END
autocmd BufNewFile,BufRead *.res  setfiletype rescript
autocmd BufNewFile,BufRead *.resi setfiletype rescript
