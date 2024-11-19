{
    pkgs,
    ...
}: {
#    imports = [
#        ./hyprland
#        ./hyprlock.nix
#        ./wlogout.nix
#    ];
    home.packages = with pkgs; [
        # screenshot
        grim
        slurp

        # utils
        wl-clipboard
        wlr-randr
    ];
    home.sessionVariables = {
        QT_QPA_PLATFORM = "wayland";
        SDL_VIDEODRIVER = "wayland";
        XDG_SESSION_TYPE = "wayland";
    };
}
