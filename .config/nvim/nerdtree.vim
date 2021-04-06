" nerdtree

let NERDTreeShowHidden=1
let g:NERDTreeHijackNetrw=0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <leader>nt :call ToggleNerdTree()<CR>
let g:which_key_map.n.t = "tree"

" syncing tree from => https://codeyarns.com/tech/2014-05-05-how-to-highlight-current-file-in-nerdtree.html
" checks if nerdtree is active
function! IsNERDTreeOpen()
    return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

function! ToggleNerdTree()
  set eventignore=BufEnter
  NERDTreeToggle
  set eventignore=
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()
