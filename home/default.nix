{
    self,
    ...
}: {
    imports = [
        ./terminal
        self.nixosModules.theme
        
    ];

    home = {
# TODO: make this overridable by the profiles thing so multiple users are possible
        username = "omgeeky";
        homeDirectory = "/home/omgeeky";
        stateVersion = "24.11";

    };

    # let HM manage itself when in standalone mode
    programs.home-manager.enable = true;

}
