{
    self,
    ...
}: {
    imports = [
        ./special/default.nix
        ./terminal
        self.nixosModules.theme
    ];

    fonts.fontconfig.enable = true;

    home = {
        stateVersion = "25.05";
    };

    # let HM manage itself when in standalone mode
    programs.home-manager.enable = true;

}
