{ config, pkgs, ... }:

{
  networking.nameservers = [ "8.8.8.8" "1.1.1.1" ];
  networking.hostName = "petarws";
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Belgrade";
  i18n.defaultLocale = "en_US.UTF-8";
}

