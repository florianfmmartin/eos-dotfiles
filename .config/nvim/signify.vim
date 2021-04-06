" signify

nnoremap <leader>gh :SignifyToggleHighlight<CR>
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

let g:signify_sign_change="~"
let g:which_key_map.g = { 'name' : 'git' }
let g:which_key_map.g.h = 'highlight'
let g:which_key_map.g.j = 'next'
let g:which_key_map.g.k = 'prev'
