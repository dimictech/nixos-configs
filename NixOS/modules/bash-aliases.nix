{ config, pkgs, lib, ...}:

{
    programs = {
        command-not-found.enable = false;

        bash = {
            shellAliases = {
                garbage = "sudo nix-collect-garbage --delete-older-than 3d";
                edit = "sudo vim /etc/nixos/configuration.nix";
                update = "sudo nixos-rebuild switch";
                adminedit = "sudo code --no-sandbox --user-data-dir /etc/nixos/";
		cls = "clear";
		ll = "ls -l";
            };
        };

    };
}
