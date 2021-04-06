" terminal settings

tnoremap <leader><leader> <C-\><C-n>
nnoremap <leader>tt :terminal<CR>
nnoremap <leader>te :e term://
nnoremap <leader>tg :e term://lazygit<CR>

let g:which_key_map.t = {
    \ 'name': 'terminal',
    \ 't': 'zsh',
    \ 'e': 'custom',
    \ 'g': 'git',
    \ }

autocmd TermOpen * exec "normal i"
