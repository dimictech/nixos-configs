{ config, pkgs, ... }:

{
  
  environment.systemPackages = with pkgs; [
    virt-manager
    libvirt
    qemu
    dnsmasq
    bridge-utils
  ];

  virtualisation.libvirtd.enable = true;
  users.users.petar.extraGroups = [ "libvirt" "kvm" ];
  services.qemuGuest.enable = true;
  services.spice-vdagentd.enable = true;
  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = [ "petar" ];
  virtualisation.virtualbox.host.enableExtensionPack = true;
  virtualisation.virtualbox.guest.enable = true;
}

