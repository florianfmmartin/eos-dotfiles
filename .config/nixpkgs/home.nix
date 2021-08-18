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
    };
    homeDirectory = "/home/fmartin";
    packages = with pkgs; [
      bat
      discord
      etcher
      firefox
      gcc
      gimp
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
