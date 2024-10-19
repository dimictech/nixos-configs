{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./audio.nix
      ./fonts.nix
      ./docker.nix
      ./virtualisation.nix
      ./winbox.nix
      ./bash-aliases.nix
];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.initrd.luks.devices."luks-33c81971-4603-45d6-ad9f-9d372d98abdc".device = "/dev/disk/by-uuid/33c81971-4603-45d6-ad9f-9d372d98abdc";

  networking.hostName = "petarws";
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Belgrade";
  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  services.printing.enable = true;
  users.users.petar = {
    isNormalUser = true;
    description = "petar";
    extraGroups = [ "networkmanager" "wheel"  ];
    packages = with pkgs; [
	whatsapp-for-linux
];
  };

  programs.hyprland.enable = true;

  programs.firefox.enable = true;
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    wget
    telegram-desktop
    anydesk
    teamviewer
    remmina
    wine
    teams-for-linux
    pciutils
    microsoft-edge
    pavucontrol
    pulseaudio
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
    vscode
  ];

  system.stateVersion = "24.05";  # Match this to your NixOS version
  hardware.opengl.enable = true;
  services.xserver.videoDrivers = ["nvidia"];
  hardware.opengl.driSupport = true;
  hardware.opengl.extraPackages = with pkgs; [
    pkgs.libglvnd
  ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  services.teamviewer.enable = true;
 
 
}

