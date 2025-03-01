{ pkgs, ... }: {
    imports = [
#        ./anyrun
        ./rofi
        ./browsers/firefox.nix
        ./media
        ./gtk.nix
    ];
    home.packages = with pkgs; [
        signal-desktop
        neovim

        gnome-calculator
        gnome-control-center

        ncdu # filesize tool. Great for figuring out where the space is going (like treesize)
    ];
}
