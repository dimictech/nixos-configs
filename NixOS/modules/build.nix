{ config, pkgs, ... }:

let
  lib = pkgs.lib;
in {
  nix.settings.max-jobs = lib.mkDefault 16;
}

