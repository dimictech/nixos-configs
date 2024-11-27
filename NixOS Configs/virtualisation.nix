{ config, pkgs, ... }:

{
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "petar" ];
  virtualisation.virtualbox.host.enableExtensionPack = true;
  virtualisation.virtualbox.guest.enable = true;
  virtualisation.waydroid.enable = true;
  virtualisation.podman = {
   enable = true;
   dockerCompat = true;
  };
}

