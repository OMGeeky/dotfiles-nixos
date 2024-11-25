{
    imports = [
        ./fonts.nix
        ./home-manager.nix
        ./xdg.nix
    ];
    programs = {
        # make HM-managed GTK stuff work
        dconf.enable = true;

        kdeconnect.enable = true;

        seahorse.enable = true;

        neovim = {
            enable = true;
            defaultEditor = true;
        };
    };
}
