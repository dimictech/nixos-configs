{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    mutter
    gnome-tweaks
    vim
    jq
    wget
    teamviewer
    remmina
    wine
    pciutils
    pavucontrol
    docker
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
    starship
    fzf
    glib
    openssl
    python3
    conky
    lm_sensors
    qemu
    i3
    i3status
    dmenu
    i3lock
    xorg.xrandr
    konsole
    i3-gaps
    mpd
    rofi
    polybar
    flameshot
    pavucontrol
    php
    wireguard-tools
  ];
  nixpkgs.config = {
  packageOverrides = pkgs: rec {
    polybar = pkgs.polybar.override {
      i3Support = true;
    };
  };
};
}

