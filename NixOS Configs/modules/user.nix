{ config, pkgs, ... }:

{
  users.users.petar = {
    isNormalUser = true;
    description = "petar";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      temurin-jre-bin-17
      taskwarrior
      zsh
      pfetch
      gcc
      clang
      zig
      qbittorrent
      kitty
      lutris
      gh
      zapzap
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
      steam
    ];
  };
}
