{ config, pkgs, ... }:

{
  users.users.petar = {
    isNormalUser = true;
    description = "petar";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      temurin-jre-bin-17
      openjdk21
      taskwarrior3
      zsh
      pfetch
      gcc
      clang
      zig
      lutris
      gh
      telegram-desktop
      teams-for-linux
      obsidian
      vlc
      obs-studio
      obs-studio-plugins.obs-nvfbc
      obs-studio-plugins.wlrobs
      obs-studio-plugins.obs-vkcapture
      obs-studio-plugins.obs-backgroundremoval
      github-desktop
      discord
      pomodoro-gtk
      dbeaver-bin
      gparted
      nftables
      firecracker
      flintlock
      nmap
      nuclei
      filezilla
      speedtest-cli
      nettools
      traceroute
      ntfs3g
      gtk3
      gtk3.dev
      twinkle
      veracrypt
      libreoffice
      polybar
      xterm
      neofetch
      inetutils
      sngrep
    ];
  };
  programs.kdeconnect.enable = true;
}
