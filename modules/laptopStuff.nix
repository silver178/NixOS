{ config, pkgs, lib, ... }:

/* Use this file for misclanious packages that provide quality of life improvements. Made for not important applications, but apps fun to have. */
{
	options.laptop.enable = lib.mkEnableOption "enable laptop applications";
	config = lib.mkIf config.laptop.enable {
		environment.systemPackages = with pkgs; [
		pkgs.moonlight-qt
		];
	};
	
}

