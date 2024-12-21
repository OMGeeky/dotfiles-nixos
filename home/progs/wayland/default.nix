{
    pkgs,
    ...
}: {
    imports = [
        ./hyprland
        ./hyprlock.nix
        ./wlogout.nix
    ];
    home.packages = with pkgs; [
        # screenshot
        grim
        slurp

        # utils
        wlr-randr

        # clipboard stuff
        wl-clipboard # basic clipboard support
        clipse # clipboard history client
    ];
    home.sessionVariables = {
        QT_QPA_PLATFORM = "wayland";
        SDL_VIDEODRIVER = "wayland";
        XDG_SESSION_TYPE = "wayland";
    };
}
