" plugged
call plug#begin('~/.vim/plugged')

" gruvbox
Plug 'sainnhe/gruvbox-material'

" base16
Plug 'Soares/base16.nvim'

" statusline
Plug 'vim-airline/vim-airline'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" auto save
Plug '907th/vim-auto-save'

call plug#end()

" settings
source ~/.config/nvim/settings.vim

" statusline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#ignore_bufadd_pat = 'defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'

" COC
let g:coc_global_extensions = [
                            \ "coc-json",
                            \ "coc-git",
                            \ "coc-css",
                            \ "coc-diagnostic",
                            \ "coc-emmet",
                            \ "coc-eslint",
                            \ "coc-floaterm",
                            \ "coc-highlight",
                            \ "coc-html",
                            \ "coc-html-css-support",
                            \ "coc-prettier",
                            \ "coc-sh",
                            \ "coc-snippets",
                            \ "coc-tailwindcss",
                            \ "coc-vetur",
                            \ "coc-yank",
                            \ "coc-explorer",
                            \ "coc-elixir",
                            \ "coc-erlang_ls",
                            \ "coc-marketplace",
                            \ ]

nnoremap <leader>p :CocCommand<CR>

" auto save
let g:auto_save=1

