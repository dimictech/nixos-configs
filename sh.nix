{ config, pkgs, lib, ... }:

{
  programs = {
    command-not-found.enable = false;

    bash = {
      shellAliases = {
        garbage = "sudo nix-collect-garbage --delete-older-than 3d";
        edit = "sudo nvim /etc/nixos/configuration.nix";
        update = "sudo nixos-rebuild switch";
        dgpu = "__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia";
        adminedit = "sudo code --no-sandbox --user-data-dir /etc/nixos/";
      };
    };

    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        garbage = "sudo nix-collect-garbage --delete-older-than 3d";
        edit = "sudo nvim /etc/nixos/configuration.nix";
        update = "sudo nixos-rebuild switch";
        dgpu = "__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia";
        adminedit = "sudo code --no-sandbox --user-data-dir /etc/nixos/";
     };
    };
  };
}

