" whichkey

let g:which_key_map =  {}
autocmd VimEnter * call which_key#register(',', "g:which_key_map")
let g:which_key_sep = '->'
let g:which_key_map = {
            \ ',' : 'which_key_ignore',
            \ }
let g:which_key_use_floating_win = 0

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
