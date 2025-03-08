{
  lib,
  pkgs,
  inputs,
  config,
  ...
}: {
  services.hyprpaper = {
    enable = true;
    package = inputs.hyprpaper.packages.${pkgs.system}.default;

    settings = {
#      preload = ["${config.theme.wallpaper}"];
      preload = ["${config.system.configurationRevision}/submods/nixos-media/sample.png"];
      wallpaper = ["${config.system.configurationRevision}/submods/nixos-media/sample.png"];
#      wallpaper = [", ${config.theme.wallpaper}"];
    };
  };

  systemd.user.services.hyprpaper.Unit.After = lib.mkForce "graphical-session.target";
}
