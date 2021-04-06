" startify

let g:startify_lists = [
    \ { 'type': 'commands', 'header': ['   Commands']},
    \ { 'type': 'sessions', 'header': ['   Sessions']},
    \ { 'type': 'dir',      'header': ['   MRU']},
    \ ]

let g:startify_commands = [
    \ {'f': ':Files'},
    \ {'r': ':Ranger'},
    \ {'t': ':terminal'},
    \ {'c': ':CalendarVR'},
    \ ]

let g:startify_custom_header = [
    \ '                              _         ',
    \ '       ____  ___  ____ _   __(_)___ ___ ',
    \ '      / __ \/ _ \/ __ \ | / / / __ `__ \',
    \ '     / / / /  __/ /_/ / |/ / / / / / / /',
    \ '    /_/ /_/\___/\____/|___/_/_/ /_/ /_/ ',
    \ '',
    \ ]
