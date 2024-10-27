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

}

