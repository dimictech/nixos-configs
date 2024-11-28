{ config, pkgs, ... }:

{
  services.printing.enable = true;
  services.flatpak.enable = true;
  programs.firefox.enable = true;
  services.teamviewer.enable = true;
  nixpkgs.config.allowUnfree = true;
  services.supergfxd.enable = true;
  systemd.services.supergfxd.path = [ pkgs.pciutils ];
  services = {
    asusd = {
      enable = true;
      enableUserService = true;
    };
};
}
