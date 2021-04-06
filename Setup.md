# Setup

1. Faire la mise à jour
1. Désinstaller ces apps dans le app store :
    - Calculatrice
    - E-Mail
    - Web de GNOME
1. Désinstaller ces apps dans le terminal :
    1. sudo apt autoremove
    1. sudo apt purge maya-calendar
    1. sudo apt purge noise
    1. sudo apt autoremove
1. Ajouter nix avec :
    - `curl -L https://nixos.org/nix/install | sh`
1. Se déconnecter et se connecter
1. Linker eos-dotfiles/.config/nixpkgs/config.nix
1. Installer les paquets avec `nix-env -iA nixpkgs.florianfmmartin`
