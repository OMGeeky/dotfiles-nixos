{
  lib,
  pkgs,
  inputs,
  self,
  config,
  ...
}:
let
  wallpaperDir = "${self}/submods/nixos-media/wallpapers"; # Replace with your wallpaper folder path
  wallpaperScript = pkgs.writeShellScriptBin "hyprland-wallpaper-switcher" ''
    WALLPAPER_DIR="${wallpaperDir}"

    CURRENT_WALLPAPER=$(hyprctl hyprpaper listloaded)

    WALLPAPER=''$(find "''$WALLPAPER_DIR" -type f -name "*.png" ! -name "$(basename "''$CURRENT_WALLPAPER")" -o -name "*.jpg" ! -name "$(basename "''$CURRENT_WALLPAPER")" | shuf -n 1)

    if ! hyprctl hyprpaper reload ",''$WALLPAPER"; then
        echo "Error switching to wallpaper \"''$WALLPAPER\" from current: \"''$CURRENT_WALLPAPER\""
    else
        echo "Wallpaper changed to: \"''$WALLPAPER\" from current: \"''$CURRENT_WALLPAPER\""
    fi

    hyprctl hyprpaper unload unused
  '';
in
{
  services.hyprpaper = {
    enable = true;
    package = inputs.hyprpaper.packages.${pkgs.system}.default;

    settings = {
      #  preload = ["${self}/submods/nixos-media/anime1.jpg"]; # commented out to disable static preload
      #  wallpaper = [", ${self}/submods/nixos-media/anime1.jpg"]; # commented out to disable static wallpaper
    };
  };

  systemd.user.services.hyprland-wallpaper-switcher = {
    Unit = {
      Description = "Hyprland Wallpaper Switcher";
#      After = ["hyprland.target"];
#      Requires = ["hyprland.target"];
    };
    Service = {
      Type = "oneshot";
      WorkingDirectory = "${wallpaperDir}"; # Optional: Set working directory to your wallpaper folder
      ExecStart = "${wallpaperScript}/bin/hyprland-wallpaper-switcher";
    };
    Install = {
      WantedBy = ["graphical-session.target"];
    };
  };

  systemd.user.timers.hyprland-wallpaper-switcher = {
    Unit = {
      Description = "Hyprland Wallpaper Switcher Timer";
    };
    Timer = {
      OnBootSec = "10"; # Start after 10 seconds on boot
      OnUnitActiveSec = "10min"; # Run every 10 minutes
      Unit = "hyprland-wallpaper-switcher.service";
    };
    Install = {
      WantedBy = ["timers.target"];
    };
  };

  systemd.user.services.hyprpaper.Unit.After = lib.mkForce "graphical-session.target";
}
