{
    self,
    inputs,
    ...
}: {
    flake.nixosConfigurations = let
        # shorten paths
        inherit (inputs.nixpkgs.lib) nixosSystem;
        homeProfiles = import "${self}/home/profiles";
        mod = "${self}/system";
        
        # get the basic config to build on top of
        inherit (import mod) desktop;

        # get these into the module system
        specialArgs = {inherit inputs self;};
    in {
        nixos = nixosSystem {
            inherit specialArgs;
            modules = 
                desktop 
                ++ [
                    ./nixos
                    "${mod}/core/users.nix"
                    "${mod}/hardware/nvidia.nix"
                    "${mod}/nix"
                    "${mod}/programs/zsh.nix"
                    "${mod}/programs/hyprland.nix"
                    "${mod}/programs/home-manager.nix"
                    {
                        home-manager = {
                            backupFileExtension = "backup";
                            users = {
                                omgeeky.imports = homeProfiles."omgeeky@khadas";
                                test.imports = homeProfiles."test@khadas";
                            };
                            extraSpecialArgs = specialArgs;
                        };
                    }
                ];
        };              
    };
}
