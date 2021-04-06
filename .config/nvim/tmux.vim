" tmux

nnoremap <leader>mo :VtrOpenRunner<CR>
nnoremap <leader>ml :VtrSendLinesToRunner<CR>
vnoremap <leader>ml :VtrSendLinesToRunner<CR>
nnoremap <leader>mr :VtrClearRunner<CR>

let g:which_key_map.m = { 'name' : 'tmux' }
let g:which_key_map.m.o = 'open'
let g:which_key_map.m.l = 'send line'
let g:which_key_map.m.r = 'clear'
