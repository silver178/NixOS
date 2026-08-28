{ config, pkgs, lib, ... }:

/* Use this file for misclanious packages that provide quality of life improvements. Made for not important applications, but apps fun to have. */
/* This can also be used for services that are not to be sorted into the mainline of the software suite. */
/*
List of possible names:
UnknownApps
misclanious
bulk
bleedingEdgeMode
*/
{
	options.trash.enable = lib.mkEnableOption "enable trash heap mode";
	config = lib.mkIf config.trash.enable {
		environment.systemPackages = with pkgs; [
		vlc
		tree
		tailscale
		obsidian
		chromium
		searxng
		anytype
		arduino
		discord
		vencord
		];
		services.searx.enable = true;
		services.searx.environmentFile = "/etc/nixos/searx/secret.env";
	};
	
}

