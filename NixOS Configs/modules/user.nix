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
    ];
  };
}

