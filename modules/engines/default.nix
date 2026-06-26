{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
		unityhub
    godot-mono
	];

}
