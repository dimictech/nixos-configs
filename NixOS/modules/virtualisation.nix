{ config, pkgs, ... }:

{
  users.users.petar.extraGroups = [ "libvirtd" ];
  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;
  virtualisation.waydroid.enable = true;
  virtualisation.podman = {
   enable = true;
   dockerCompat = true;
  };
}

