{
  inputs,
  pkgs,
  ...
}: {
  # enable hyprland and required options
  programs.hyprland = {
    enable = true;
    withUWSM = true; # https://wiki.hyprland.org/Useful-Utilities/Systemd-start/

    package = inputs.hyprland.packages.${pkgs.system}.default;
    portalPackage = inputs.hyprland.packages.${pkgs.system}.xdg-desktop-portal-hyprland;
  };

  # tell Electron/Chromium to run on Wayland
  environment.variables.NIXOS_OZONE_WL = "1";
}
