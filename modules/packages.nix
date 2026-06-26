{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    pkgs.vimPlugins.omnisharp-extended-lsp-nvim
    clang-tools
    unzip # For extracting mason lsps, daps, etc
    pkgs.nerd-fonts.jetbrains-mono
    bitwarden-desktop
    vlc
    ffmpeg
    ffmpegthumbnailer
  ];


}

