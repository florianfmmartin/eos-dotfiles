" settings

" leader
let mapleader = ","

" tab and indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nosmartindent
set nosmarttab

au Filetype cpp setlocal noexpandtab
au Filetype ocaml setlocal noexpandtab tabstop=2
au Filetype ocaml setlocal softtabstop=2 shiftwidth=2

function LeaderReTab(len, style)
    if a:style
        set noexpandtab
    else
        set expandtab
    endif
    let &l:tabstop = a:len
    let &l:softtabstop = a:len
    let &l:shiftwidth = a:len
    %retab!
endfunction

nnoremap <leader>rt :call LeaderReTab(
nnoremap <leader>rl 079lf<Space>r<CR>

let g:which_key_map.r = { 'name' : 'reload' }
let g:which_key_map.r.t = 'tabs'
let g:which_key_map.r.l = 'limit'

" numbers column
set number
set signcolumn=yes

" wrap
set linebreak
set breakindent
set breakindentopt="shift:4, sbr"
set showbreak=>-->

" config ui
set nocompatible
filetype plugin on
syntax on
set conceallevel=0
set lazyredraw
set showmatch
set showcmd
set scrolloff=8
set path+=**
set timeoutlen=300
set cursorline
set fillchars=vert:\|
hi! VertSplit ctermfg=145 guifg=#ECEFF4
hi! Comment cterm=bold gui=bold

nnoremap <leader>rc :w<CR>:source ~/.config/nvim/init.vim<CR>

let g:which_key_map.r.c = 'config'

" buffers
set hidden

nnoremap gt :bnext<CR>
nnoremap gb :bprevious<CR>
nnoremap ge :bdelete!<CR>
nnoremap <leader>bn :enew<CR>

let g:which_key_map.b = { 'name' : 'buffer' }
let g:which_key_map.b.n = 'new'
let g:which_key_map.b.d = 'delete'

" clipboard
set clipboard=unnamedplus

vnoremap T $hy
nnoremap <leader>y yyp

let g:which_key_map.y = "yyp"

" searching
set ignorecase

nnoremap <leader><space> :noh<CR>

" extra line management
nnoremap <leader>o O<Esc>

let g:which_key_map.o = 'extra line'

" fold
set foldlevelstart=10
set foldmethod=indent

" invisibles
set listchars=eol:¬,space:·,tab:>\ 
set list

" split navigation
set splitright
set splitbelow

nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>

" split resize
nnoremap <leader>vk :vertical-resize -2<CR>
nnoremap <leader>vj :vertical-resize +2<CR>
nnoremap <leader>vv <C-w>=

let g:which_key_map.v = {
            \ 'name' : 'resize',
            \ 'k' : '++',
            \ 'j' : '--',
            \ 'v' : 'reset',
            \ }

" autocompletion setup
set completeopt=menuone
set shortmess+=c

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap " ""<Left>

autocmd Filetype vim inoremap " "<Space>
autocmd Filetype cpp inoremap { {<CR>}<Up><C-O>$
autocmd Filetype tex inoremap $ $$<Left>

" move line visual
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
xnoremap < <<CR>gv-gv
xnoremap > ><CR>gv-gv

" naviguation
nnoremap <leader><leader> <Right>
inoremap <leader><leader> <Right>
nnoremap ; :
nnoremap : ;
nnoremap - $
vnoremap - $
xnoremap - $
inoremap <C-Space> <C-X><C-O>
nnoremap <Space> w
nnoremap <BackSpace> b

" latex
nnoremap <leader>xc :!pdflatex '%:p'<CR>
nnoremap <leader>xv :!zathura '%:r'.pdf & disown <CR>

let g:which_key_map.x = {
            \ 'name' : 'latex',
            \ 'c' : 'compile',
            \ 'v' : 'view',
            \ }

" highlight yank
au TextYankPost * silent! lua vim.highlight.on_yank() {timeout=800}
let g:highlightedyank_highlight_duration = 300

" spell checking
au Filetype tex setlocal spell spelllang=fr

inoremap <leader>¸ <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <leader>ef :setlocal spell spelllang=fr<CR>
nnoremap <leader>ee :setlocal spell spelllang=en<CR>
nnoremap <leader>es :setlocal nospell<CR>

let g:which_key_map.e = {
            \ 'name' : 'spell',
            \ 's' : 'stop',
            \ 'f' : 'français',
            \ 'e' : 'english',
            \ }

