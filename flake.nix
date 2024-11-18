{
    description="A flake by the book";


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
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
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
        
        anyrun.url = "github:fufexan/anyrun/launch-prefix";

        helix.url = "github:helix-editor/helix";
    
        hm = {
          url = "github:nix-community/home-manager";
          inputs.nixpkgs.follows = "nixpkgs";
        };

        yazi.url = "github:sxyazi/yazi";
        
        # hyprwm
        hyprland.url = "github:hyprwm/hyprland";
    
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



    };
}
