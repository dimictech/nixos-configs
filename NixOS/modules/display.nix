{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  hardware.opengl.enable = true;
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia.prime = {
    offload.enable = true;
    intelBusId = "PCI:0:2:0"; # Replace with your Intel GPU bus ID
    nvidiaBusId = "PCI:1:0:0"; # Replace with your NVIDIA GPU bus ID
  };
  hardware.opengl.driSupport = true;
  hardware.opengl.extraPackages = with pkgs; [
    pkgs.libglvnd
  ];
}

