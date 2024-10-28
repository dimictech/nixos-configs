{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./audio.nix
    ./fonts.nix
    ./docker.nix
    ./virtualisation.nix
    ./winbox.nix
    ./sh.nix
    ./wifi.nix
    ./modules/user.nix
    ./modules/networking.nix
    ./modules/display.nix
    ./modules/system-packages.nix
    ./modules/services.nix
    ./modules/hardware.nix
  ];

  # System version
  system.stateVersion = "24.05";
  nixpkgs.config.allowUnsupportedSystem = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.luks.devices."luks-33c81971-4603-45d6-ad9f-9d372d98abdc".device = "/dev/disk/by-uuid/33c81971-4603-45d6-ad9f-9d372d98abdc";
}

