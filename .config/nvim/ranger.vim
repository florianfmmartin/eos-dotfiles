" ranger

let g:ranger_map_keys = 0
let g:ranger_replace_netrw = 1

nnoremap <leader>nn :Ranger<CR>

let g:which_key_map.n = { 'name': 'files' }
let g:which_key_map.n.n = 'ranger'
