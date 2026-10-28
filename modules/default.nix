{ config, pkgs, lib, ...}:

{

	/*options = {
		workstation.enable = lib.mkEnableOption "Enable workstation mode for programmers";
		trashheap.enable = lib.mkEnableOption "When enabled, unsorted packages/meaningless redundencies will be added";
		};
		*/

		/* This will be used to enable future modules/sections. It will be renamed eventually. Trust me bro. It will... hopefully */

  imports =
    [
    ./packages.nix
		./engines/default.nix
		#/etc/nixos/modules/laptopStuff.nix
		./laptopStuff.nix
		#/etc/nixos/modules/android-development.nix
		./android-development.nix
		#/etc/nixos/modules/work.nix
		./work.nix
    ];
		trash.enable = true; /* TODO: Should be renamed to something clearer */
		laptop.enable = true;
		work.enable = true;
}

