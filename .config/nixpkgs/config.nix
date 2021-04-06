{
  packageOverrides = pkgs: with pkgs;
  {
    florianfmmartin = pkgs.buildEnv {
      name = "florianfmmartin";
      paths = [
        firefox
        chromium
        vscodium
        insomnia
        discord
        teams
        spotify
        marktext
        libreoffice
        gimp
        gnome3.gnome-boxes
        neofetch
        tree
        unzip
        git
        xclip
        neovim
        zip
        bat
        etcher
        fzf
        ranger
        gcolor3
        lazygit
        ripgrep
        starship
        ueberzug
        xonsh
      ];
    };
  };

  allowUnfree = true;
}
