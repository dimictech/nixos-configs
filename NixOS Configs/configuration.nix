{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./audio.nix
    ./fonts.nix
    ./virtualisation.nix
    ./winbox.nix
    ./sh.nix
    ./modules/user.nix
    ./modules/networking.nix
    ./modules/display.nix
    ./modules/system-packages.nix
    ./modules/services.nix
    ./modules/hardware.nix
    ./modules/build.nix
  ];

  boot.blacklistedKernelModules = [ "cs35l41-hda" ];
  system.stateVersion = "24.05";
  systemd.services."NetworkManager-wait-online".enable = false;
  nixpkgs.config.allowUnsupportedSystem = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.configurationLimit = 5;
}

