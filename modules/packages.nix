{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.vimPlugins.omnisharp-extended-lsp-nvim
    clang-tools
    unzip # For extracting mason lsps, daps, etc
    pkgs.nerd-fonts.jetbrains-mono
    bitwarden-desktop
    ffmpeg
    ffmpegthumbnailer
    pkgs.bottles
    pkgs.wine
    pkgs.protonplus
		pkgs.dotnet-sdk
		emacsPackages.omnisharp
		spicetify-cli
		spotify
		ghostty
		cmake
		ninja
		pkg-config
		qt6.qt3d
		qt6.qtbase
		qt6.qttools

  ];


}

