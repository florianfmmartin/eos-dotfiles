" fzf

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

nnoremap <leader>ff :Files<CR>
nnoremap <leader>fh :Files ~<CR>
nnoremap <leader>fs :Lines<CR>
nnoremap <leader>fw :Lines <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>fb :Buffers<CR>

let g:which_key_map.f = { 'name' : 'fzf' }
let g:which_key_map.f.f = 'cwd'
let g:which_key_map.f.h = 'home'
let g:which_key_map.f.s = 'search'
let g:which_key_map.f.w = 'word fzf '
let g:which_key_map.f.b = 'buffers'
