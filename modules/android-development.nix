
{ config, pkgs, lib, ... }:

/* Use this file for misclanious packages that provide quality of life improvements. Made for not important applications, but apps fun to have. */
{
	options.android.enable = lib.mkEnableOption "enable android dev tools";
	config = lib.mkIf config.android.enable {
		environment.systemPackages = with pkgs; [
		pkgs.androidStudioPackages.dev
		flutter
		android-tools
		];
	};
	
}

