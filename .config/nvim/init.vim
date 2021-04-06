" plugged
call plug#begin('~/.vim/plugged')

" vimwiki
" Plug 'vimwiki/vimwiki'

" whichkey
Plug 'liuchengxu/vim-which-key'

" colorscheme
" Plug 'joshdick/onedark.vim'
Plug 'sainnhe/gruvbox-material'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" tcomment
Plug 'tomtom/tcomment_vim'

" surronds
Plug 'tpope/vim-surround'

" colorize
Plug 'ap/vim-css-color'

" signify
Plug 'mhinz/vim-signify'

" lsp
" Plug 'autozimu/LanguageClient-neovim', {
            " \ 'branch': 'next',
            " \ 'do': 'bash install.sh',
            " \ }

" polyglot
Plug 'sheerun/vim-polyglot'

" tmux
" Plug 'christoomey/vim-tmux-runner'

" ranger
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'

" deoplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" float
Plug 'ncm2/float-preview.nvim'

" startify
Plug 'mhinz/vim-startify'

" tagbar
" Plug 'preservim/tagbar'

" md preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" whichkey
source ~/.config/nvim/whichkey.vim

" settings
source ~/.config/nvim/settings.vim

" terminal related
source ~/.config/nvim/term_set.vim

" colorscheme
source ~/.config/nvim/colorscheme.vim

" airline
source ~/.config/nvim/airline.vim

" wiki
" source ~/.config/nvim/wiki.vim

" fzf
source ~/.config/nvim/fzf.vim

" tcomment
source ~/.config/nvim/tcomment.vim

" signify
source ~/.config/nvim/signify.vim

" ranger
source ~/.config/nvim/ranger.vim

" float
source ~/.config/nvim/float.vim

" startify
source ~/.config/nvim/startify.vim

" tagbar
" source ~/.config/nvim/tagbar.vim

" deoplete
" source ~/.config/nvim/deoplete.vim

" nerdtree
" source ~/.config/nvim/nerdtree.vim

" lsp
" source ~/.config/nvim/lsp.vim

" coc
" let g:coc_global_extensions = [
"                             \ 'coc-css',
"                             \ 'coc-emmet',
"                             \ 'coc-eslint',
"                             \ 'coc-html',
"                             \ 'coc-html-css-support',
"                             \ 'coc-json',
"                             \ 'coc-markdownlint',
"                             \ 'coc-prettier',
"                             \ 'coc-pyright',
"                             \ 'coc-sh',
"                             \ 'coc-snippets',
"                             \ 'coc-tailwindcss',
"                             \ 'coc-tsserver',
"                             \ 'coc-vetur',
"                             \ 'coc-vimlsp',
"                             \ 'coc-yank'
"                             \ ]

" whichkey mapping
nnoremap <silent> <leader> :WhichKey ','<CR>
