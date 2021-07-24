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
	  alias rr="ranger"
	  alias uu="sudo apt update && sudo apt full-upgrade"
	  alias vv="nvim"
	  alias zz="lazygit"
	'';
      };
    };
    homeDirectory = "/home/fmartin";
    packages = with pkgs; [
      bat
      chromium
      discord
      etcher
      firefox
      gimp
      gnome3.gnome-boxes
      insomnia
      lazygit
      libreoffice
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
      unzip
      victor-mono
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
}
