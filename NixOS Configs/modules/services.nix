{ config, pkgs, ... }:

{
  services.printing.enable = true;
  services.flatpak.enable = true;
  programs.hyprland.enable = true;
  programs.firefox.enable = true;
  services.teamviewer.enable = true;
  nixpkgs.config.allowUnfree = true;
}

