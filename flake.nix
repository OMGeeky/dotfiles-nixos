{
    description="A flake by the book";

    nixConfig = {
        extra-substituters = [
            "https://hyprland.cachix.org"
            "https://nix-community.cachix.org"
        ];
        extra-trusted-public-keys = [
            "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
            "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        ];
    };

    outputs = inputs: 
        inputs.flake-parts.lib.mkFlake {inherit inputs;} {
            systems = ["x86_64-linux"];

            imports = [
                ./hosts
                ./modules
            ];

            perSystem = {
                config,
                pkgs,
                ...
            }:{
                
            };
        };


    inputs = {
        #NixOs official package source
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
        nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

        # global, so they can be `.follow`ed
        systems.url = "github:nix-systems/default-linux";

        flake-compat.url = "github:edolstra/flake-compat";

        flake-utils = {
          url = "github:numtide/flake-utils";
          inputs.systems.follows = "systems";
        };

        flake-parts = {
          url = "github:hercules-ci/flake-parts";
          inputs.nixpkgs-lib.follows = "nixpkgs";
        };


        # rest of inputs, alphabetical order?
        
        helix.url = "github:helix-editor/helix";
    
        hm = {
          url = "github:nix-community/home-manager/release-25.05";
          inputs.nixpkgs.follows = "nixpkgs-unstable";
        };

        # hyprwm
        hyprland = {
          url = "github:hyprwm/hyprland";
#          inputs.nixpkgs.follows = "nixpkgs";
        };
    
        hypridle = {
          url = "github:hyprwm/hypridle";
          inputs = {
            hyprlang.follows = "hyprland/hyprlang";
                hyprutils.follows = "hyprland/hyprutils";
            nixpkgs.follows = "hyprland/nixpkgs";
            systems.follows = "hyprland/systems";
          };
        };
    
        hyprland-contrib = {
          url = "github:hyprwm/contrib";
          inputs.nixpkgs.follows = "hyprland/nixpkgs";
        };
    
        hyprland-plugins = {
          url = "github:hyprwm/hyprland-plugins";
          inputs.hyprland.follows = "hyprland";
        };
    
        hyprlock = {
          url = "github:hyprwm/hyprlock";
          inputs = {
            hyprlang.follows = "hyprland/hyprlang";
            hyprutils.follows = "hyprland/hyprutils";
            nixpkgs.follows = "hyprland/nixpkgs";
            systems.follows = "hyprland/systems";
          };
        };
    
        hyprpaper = {
          url = "github:hyprwm/hyprpaper";
          inputs = {
            hyprlang.follows = "hyprland/hyprlang";
            hyprutils.follows = "hyprland/hyprutils";
            nixpkgs.follows = "hyprland/nixpkgs";
            systems.follows = "hyprland/systems";
          };
        };

#        jetbrains-plugins = {
#            url = "github:theCapypara/nix-jetbrains-plugins";
#            inputs.nixpkgs.follows = "nixpkgs-unstable";
#        };

    };
}
