{ config, pkgs, lib, ... }:

{
  options.kde.enable = lib.mkEnableOption "enable KDE DE";
  options.pantheon.enable = lib.mkEnableOption "Enables the Pantheon environment";

  config = lib.mkMerge [
    (lib.mkIf config.kde.enable {
      services.desktopManager.plasma6.enable = true;
      services.libinput.enable = true;
      # services.xserver.enable = true;

      environment.systemPackages = with pkgs; [
        kdePackages.plasma-nm
        kdePackages.kdeconnect-kde
        kdePackages.filelight
        kdePackages.oxygen
        ark
      ];
			programs.kdeconnect.enable = true;
    })

    (lib.mkIf config.pantheon.enable {
      services.xserver.displayManager.lightdm.enable = true;
      services.desktopManager.pantheon.enable = true;
    })
  ];
}

