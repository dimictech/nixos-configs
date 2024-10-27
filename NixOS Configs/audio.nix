{ config, pkgs, ... }:

{
	# Enable PulseAudio
	sound.enable = true;
	hardware.pulseaudio.enable = true;
	hardware.pulseaudio.support32Bit = true;

	users.users.petar.extraGroups = [ "audio" ];

	security.rtkit.enable = true;
}
