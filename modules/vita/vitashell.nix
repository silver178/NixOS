{pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSUserEnv {

targetPkgs = pkgs: with pkgs; [
		git
		cmake
		python3
		gcc
		stdenv.cc.cc
];

profile = ''

export VITASDK = "$HOME/.vitasdk"
export PATH="$VITASDK/bin:$PATH"
'';
		}).env

