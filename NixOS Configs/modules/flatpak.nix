{ config, pkgs, ... }:

{
  systemd.services.flatpak-add-repo = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.flatpak ];
    serviceConfig = {
      ExecStart = "${pkgs.flatpak}/bin/flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo";
    };
  };

  systemd.services.flatpak-install-apps = {
    wantedBy = [ "multi-user.target" ];
    path = [ pkgs.flatpak ];
    after = [ "flatpak-add-repo.service" ];  # Ensure repo is added first
    serviceConfig = {
      ExecStart = "${pkgs.flatpak}/bin/flatpak install -y flathub com.jeffser.Alpaca";
    };
  };
}

