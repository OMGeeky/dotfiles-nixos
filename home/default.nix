{
    self,
    ...
}: {
    imports = [
        ./special/default.nix
        ./terminal
        self.nixosModules.theme
    ];

    home = {
        stateVersion = "24.11";
    };

    # let HM manage itself when in standalone mode
    programs.home-manager.enable = true;

}
