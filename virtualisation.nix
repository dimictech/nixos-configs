{ config, pkgs, ... }:

{
  virtualisation.libvirtd = {
    enable = true;
    qemu.package = pkgs.qemu_kvm;
  };

  environment.systemPackages = with pkgs; [
    virt-manager
    bridge-utils
    libvirt
    qemu
  ];

  users.users.petar = {
    isNormalUser = true;
    extraGroups = [ "libvirt" "kvm" ];
  };

  boot.kernelModules = [ "kvm-intel" "kvm-amd" ];
}

