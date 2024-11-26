{ config, lib, pkgs, ... }:
{
  networking.firewall = {
    allowedTCPPorts = [ 80 443 ];
    allowedUDPPortRanges = [
      {
        from = 40000;
        to = 50000;
      }
    ];
  };
  programs.winbox = {
    enable = true;
    openFirewall = true;
    package = pkgs.winbox;
  };
}
