{
  lib,
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./binds.nix
    ./rules.nix
    ./settings.nix
    ./smartgaps.nix
  ];

  home.packages = [
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
  ];

  # enable hyprland
  wayland.windowManager.hyprland = {
    enable = true;
#    settings.debug = {
#        disable_logs = false; #enable logs if hyprland crashes
#        enable_stdout_logs = true;
#    };

	# set package & portalPackage to null to use the nixos module, instead of home-manager one
    package = null;
    portalPackage = null; 

    systemd = {
      enable = false; # https://wiki.hyprland.org/Useful-Utilities/Systemd-start/
      variables = ["--all"];
      extraCommands = [
        "systemctl --user stop graphical-session.target"
        "systemctl --user start hyprland-session.target"
      ];
    };
  };

  systemd.user.targets.tray.Unit.Requires = lib.mkForce ["graphical-session.target"];
}
