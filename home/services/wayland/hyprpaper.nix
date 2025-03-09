{
  lib,
  pkgs,
  inputs,
  self,
  ...
}: {
  services.hyprpaper = {
    enable = true;
    package = inputs.hyprpaper.packages.${pkgs.system}.default;

    settings = {
#      preload = ["${config.theme.wallpaper}"];
      preload = ["${self}/submods/nixos-media/anime1.jpg"];
      wallpaper = [", ${self}/submods/nixos-media/anime1.jpg"];
#      wallpaper = [", ${config.theme.wallpaper}"];
    };
  };

  systemd.user.services.hyprpaper.Unit.After = lib.mkForce "graphical-session.target";
}
