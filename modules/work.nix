
{ config, pkgs, lib, ... }:

/* This is an everchanging file for my work environment for Mindhome. Packages are likely to leave, change, etc. */
{
	options.work.enable = lib.mkEnableOption "enable work applications";
	config = lib.mkIf config.work.enable {
		environment.systemPackages = with pkgs; [
		slack
		arduino
		kicad
		];
	};
	
}

