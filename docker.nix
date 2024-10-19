{ pkgs, fonts, ... }:

{
	virtualisation.docker.enable = true;
	users.users.petar.extraGroups = [ "docker" ];
}
