" settings

" leader
let mapleader = ","

" colorscheme
set termguicolors
set background=dark

" gruvbox
let g:gruvbox_material_background="medium"
colorscheme gruvbox-material

" tab and indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set mouse=a

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
nnoremap <leader>rl 060lf<Space>r<CR>

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
set noshowmode
set conceallevel=0
set lazyredraw
set showmatch
set showcmd
set scrolloff=8
set path+=**
set timeoutlen=300
set cursorline
set fillchars=vert:\ 
hi! VertSplit ctermfg=145 guifg=#ECEFF4
hi! Comment cterm=bold gui=bold

nnoremap <leader>rc :w<CR>:source ~/.config/nvim/init.vim<CR>

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap < <><Left>

" buffers
set hidden

nnoremap gt :bnext<CR>
nnoremap gb :bprevious<CR>

" clipboard
" set clipboard=unnamedplus

" searching
set ignorecase

nnoremap <leader><space> :noh<CR>

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

" autocompletion setup
set completeopt=menuone
set shortmess+=c

" move line visual
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
xnoremap < <<CR>gv-gv
xnoremap > ><CR>gv-gv

" naviguation
nnoremap ; :
nnoremap : ;
nnoremap - $
vnoremap - $
xnoremap - $
inoremap <C-Space> <C-X><C-O>
nnoremap <Space> w
nnoremap <BackSpace> b

" highlight yank
au TextYankPost * silent! lua vim.highlight.on_yank() {timeout=800}
let g:highlightedyank_highlight_duration = 300

" spell checking
au Filetype tex setlocal spell spelllang=fr

inoremap <leader>¸ <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <leader>ef :setlocal spell spelllang=fr<CR>
nnoremap <leader>ee :setlocal spell spelllang=en<CR>
nnoremap <leader>es :setlocal nospell<CR>

" terminal settings

tnoremap <leader><leader> <C-\><C-n>
nnoremap <leader>tt :terminal<CR>
nnoremap <leader>te :e term://
nnoremap <leader>tg :e term://lazygit<CR>

autocmd TermOpen * exec "normal i"
