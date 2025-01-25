{ pkgs, ... }: {
    imports = [
        ./fonts.nix
        ./home-manager.nix
        ./xdg.nix
        ./flatpak.nix
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
        steam = {
            enable = true;
            remotePlay.openFirewall = true;
            extraPackages = with pkgs; [
                gamescope
            ];
            protontricks.enable = true;
            localNetworkGameTransfers.openFirewall = true;
        };
    };
}
