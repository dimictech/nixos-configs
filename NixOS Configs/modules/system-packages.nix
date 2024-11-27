{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    teamviewer
    remmina
    wine
    pciutils
    pavucontrol
    docker
    gnome.mutter
    gnome.gnome-tweaks
    htop
    zip
    unzip
    gnome-extension-manager
    hyprland
    openvpn
    networkmanager-openvpn
    dig
    tcpdump
    git
    kitty
    wdisplays
    winbox
    obs-studio
    nmap
    nodejs
    networkmanager-l2tp
    neovim
    ventoy
    ripgrep
    fd
    gnumake
    mesa
    pkg-config
    gtk3
    gtk3.dev
    ntfs3g
    xclip
    distrobox
    boxbuddy
    timeshift
  ];
}

