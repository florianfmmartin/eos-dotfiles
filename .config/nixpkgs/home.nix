{ config, pkgs, ... }:

{
  fonts = {
    fontconfig = {
      enable = true;
    };
  };
  home = {
    file = {
      ".bash_aliases" = {
        text = ''
          alias ".."="cd .."
          alias hme="home-manager edit"
          alias hms="home-manager switch"
          alias ls="ls -A --color=always"
          alias ncg="nix-collect-garbage"
          alias ncgd="nix-collect-garbage -d"
          alias qq="exit"
          alias rr="ranger --choosedir=/tmp/ranger_outdir && cd \$(cat /tmp/ranger_outdir)"
          alias uu="sudo apt update && sudo apt full-upgrade"
          alias vscode="code . & disown & exit"
          alias vv="nvim"
          alias zz="lazygit"
        '';
      };
      ".tmux.conf" = {
        text = ''
          # remap prefix from 'C-b'
          unbind C-b
          set-option -g prefix C-z
          bind-key C-z send-prefix

          # split panes using | and -
          bind | split-window -h
          bind - split-window -v
          unbind '"'
          unbind %

          # reload config file (change file location to your the tmux.conf you want to use)
          bind r source-file ~/.tmux.conf

          # index from 1
          set -g base-index 1
          set -g pane-base-index 1

          # switch panes using Alt-arrow without prefix
          bind -n M-h select-pane -L
          bind -n M-l select-pane -R
          bind -n M-k select-pane -U
          bind -n M-j select-pane -D

          # switch panes with ESC deactivate
          set -s escape-time 0

          # don't rename windows automatically
          set-option -g allow-rename off

          # theme
          set -g status-left "#[fg=black,bg=green] #S #[fg=green,bg=black] #[fg=white]"
          set -g status-right ""

          set -g status-bg black
          set -g status-fg white

          set -g window-status-format "#[fg=white,bg=black] #I  #W"
          set -g window-status-current-format "#[fg=green,bg=black] #I  #W"
        '';
      };
    };
    homeDirectory = "/home/fmartin";
    packages = with pkgs; [
      bat
      discord
      etcher
      firefox
      gcc
      gimp
      gnome.gnome-boxes
      ideogram
      insomnia
      lazygit
      libreoffice
      meson
      nerdfonts
      neofetch
      nodejs
      nodejs-12_x
      nodePackages.npm
      pick-colour-picker
      ranger
      ripgrep
      spotify
      tmux
      tmuxp
      tree
      ueberzug
      ungoogled-chromium
      unzip
      vala
      vscode
      xclip
      xonsh
      yarn
      zip
    ];
    sessionVariables = {
      EDITOR = "nvim";
    };
    stateVersion = "21.11";
    username = "fmartin";
  };
  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };
  programs = {
    fzf = {
      defaultCommand = "find .";
      enable = true;
    };
    git = {
      enable = true;
      userEmail = "florian.fm.martin@gmail.com";
      userName = "florianfmmartin";
    };
    home-manager = {
      enable = true;
    };
    neovim = {
      enable = true;
      extraConfig = ''
        let mapleader = ","
        set number
        set signcolumn=yes
        set linebreak
        set breakindent
        set breakindentopt="shift:4, sbr"
        set showbreak=>-->
        set scrolloff=8
        set cursorline
        set fillchars=vert:\|
        hi! VertSplit ctermfg=145 guifg=#ECEFF4
        hi! Comment cterm=bold gui=bold
        set hidden
        nnoremap gt :bnext<CR>
        nnoremap gb :bprevious<CR>
        nnoremap ge :bdelete!<CR>
        set ignorecase
        set listchars=eol:¬,space:·,tab:>\ 
        set list
        nnoremap ; :
        nnoremap : ;
        inoremap <C-Space> <C-X><C-O>
        nnoremap <Space> w
        nnoremap <BackSpace> b
        set completeopt=menuone
        inoremap ( ()<Left>
        inoremap { {}<Left>
        inoremap [ []<Left>
        xnoremap K :move '<-2<CR>gv-gv
        xnoremap J :move '>+1<CR>gv-gv
        xnoremap < <<CR>gv-gv
        xnoremap > ><CR>gv-gv
        tnoremap <leader><leader> <C-\><C-n>
        nnoremap <leader>tt :terminal<CR>
        nnoremap <leader>te :e term://
        nnoremap <leader>tg :e term://lazygit<CR>
        autocmd TermOpen * exec "normal i"
        nnoremap <leader>p :Commands<CR>
      '';
      plugins = with pkgs.vimPlugins; [
        {
          plugin = fzf-vim;
          config = ''
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
          '';
        }
        {
          plugin = gruvbox-material;
          config = ''
            set termguicolors
            let g:gruvbox_material_background = 'hard'
            colorscheme gruvbox-material
          '';
        }
        ranger-vim
        {
          plugin = tcomment_vim;
          config = ''
            nnoremap <leader>c :TComment<CR>
            vnoremap <leader>c :TComment<CR>
          '';
        }
        {
          plugin = vim-airline;
          config = ''
            let g:airline_powerline_fonts = 1
            let g:airline_theme = 'lucius'
            let g:airline_section_error = '''
            let g:airline_section_warning = '''
            let g:airline#extensions#tabline#enabled = 1
            let g:airline#extensions#tabline#fnamemod = ':t'
            let g:airline#extensions#tabline#buffers_label = '''
            let g:airline_section_c = '%f'
            let g:airline_section_z = '%l/%L : %02c'
            let g:airline#extensions#tabline#ignore_bufadd_pat = '!|defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'
            let g:airline#extensions#term#enabled = 0
            set noshowmode
          '';
        }
        vim-airline-themes
        vim-css-color
        vim-polyglot
        {
          plugin = vim-signify;
          config = ''
            let g:signify_sign_change="~"
          '';
        }
        {
          plugin = vim-startify;
          config = ''
            let g:startify_lists = [
            \ { 'type': 'commands', 'header': ['   Commands']},
            \ { 'type': 'sessions', 'header': ['   Sessions']},
            \ { 'type': 'dir',      'header': ['   MRU']},
            \ ]

            let g:startify_commands = []

            let g:startify_custom_header = [
            \ '                              _         ',
            \ '       ____  ___  ____ _   __(_)___ ___ ',
            \ '      / __ \/ _ \/ __ \ | / / / __ `__ \',
            \ '     / / / /  __/ /_/ / |/ / / / / / / /',
            \ '    /_/ /_/\___/\____/|___/_/_/ /_/ /_/ ',
            \ ''',
            \ ]
          '';
        }
        vim-surround
      ];
      viAlias = true;
      vimAlias = true;
      withNodeJs = true;
    };
    starship = {
      enable = true;
      settings = {
        add_newline = false;
        character = {
          error_symbol = "[➜](bold red)";
          success_symbol = "[➜](bold green)";
        };
        line_break = {
          disabled = true;
        };
        package = {
          disabled = true;
        };
        python = {
          format = "via [\${symbol}\${pyenv_prefix}(\${version} )(\($virtualenv\) )]($style)";
          python_binary = "python3";
        };
      };
    };
  };
  xdg = {
    configFile = {
      "ranger/rc.conf" = {
        text = ''
          set column_ratios 3,5
          set show_hidden true
        '';
      };
    };
  };
}
