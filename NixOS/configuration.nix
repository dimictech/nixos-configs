{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./modules/audio.nix
    ./modules/fonts.nix
    ./modules/virtualisation.nix
    ./modules/winbox.nix
    ./modules/sh.nix
    ./modules/user.nix
    ./modules/networking.nix
    ./modules/display.nix
    ./modules/system-packages.nix
    ./modules/services.nix
    ./modules/hardware.nix
    ./modules/build.nix
    ./modules/fs.nix
  ];
  boot.kernelPackages = pkgs.linuxPackages_6_11;
  system.stateVersion = "24.05";
  nixpkgs.config.allowUnsupportedSystem = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.configurationLimit = 5;
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
  ];
}

