" nvim-tree-lua

let g:lua_tree_side = 'left'
let g:lua_tree_width = 30
let g:lua_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:lua_tree_auto_open = 0
let g:lua_tree_auto_close = 1
let g:lua_tree_quit_on_open = 0
let g:lua_tree_follow = 0
let g:lua_tree_indent_markers = 1
let g:lua_tree_hide_dotfiles = 0
let g:lua_tree_git_hl = 1
let g:lua_tree_root_folder_modifier = ':~'
let g:lua_tree_tab_open = 1
let g:lua_tree_allow_resize = 0
let g:lua_tree_show_icons = {
    \ 'git': 0,
    \ 'folders': 1,
    \ 'files': 0,
    \ }

let g:lua_tree_bindings = {
    \ 'edit':            ['<CR>', 'o'],
    \ 'edit_vsplit':     '<C-v>',
    \ 'edit_split':      '<C-x>',
    \ 'edit_tab':        '<C-t>',
    \ 'toggle_ignored':  'I',
    \ 'toggle_dotfiles': 'H',
    \ 'refresh':         'R',
    \ 'preview':         '<Tab>',
    \ 'cd':              'c',
    \ 'create':          'a',
    \ 'remove':          'd',
    \ 'rename':          'r',
    \ 'cut':             'x',
    \ 'copy':            'y',
    \ 'paste':           'p',
    \ 'prev_git_item':   'gp',
    \ 'next_git_item':   'gn',
    \ }

let g:lua_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "U",
    \   'staged': "S",
    \   'unmerged': "M",
    \   'renamed': "R",
    \   'untracked': "?"
    \   },
    \ 'folder': {
    \   'default': "▶",
    \   'open': "▼"
    \   }
    \ }

nnoremap <leader>nt :LuaTreeToggle<CR>

