{ pkgs, ... }: {
    imports = [
        ./anyrun/default.nix
        ./browsers/firefox.nix
#        ./media
        ./gtk.nix
    ];
    home.packages = with pkgs; [
        signal-desktop
        neovim

        gnome-calculator
        gnome-control-center
    ];
}
