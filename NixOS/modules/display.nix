{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  hardware.graphics.enable = true;
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia.prime = {
    offload.enable = true;
    intelBusId = "PCI:0:2:0"; # Replace with your Intel GPU bus ID
    nvidiaBusId = "PCI:1:0:0"; # Replace with your NVIDIA GPU bus ID
  };
  hardware.graphics.extraPackages = with pkgs; [
    pkgs.libglvnd
  ];
}

