{
    config,
    pkgs,
    inputs,
    lib,
    ...
}: 
{
    imports = [
        ./nh.nix
        ./nixpkgs.nix
        ./substituters.nix
    ];

      # we need git for flakes
    environment.systemPackages = with pkgs; [
        git
        kdePackages.dolphin
        kdePackages.qtwayland
        kdePackages.qtsvg

	# useful tools
	psmisc # ex. killall, fuser

	usbutils
	pciutils

	ripgrep # (rg) alternative to grep respecting .gitignore
	fd # alternative to find

	mtr # network diagnostic tool combining traceroute & ping
	nmap # more network tooling

	# monitoring
	htop
	iotop

    ];
    
    virtualisation.docker.enable = true;

    nix = let
        flakeInputs = lib.filterAttrs (_: v: lib.isType "flake" v) inputs;
    in {
        package = pkgs.lix;
    
        # pin the registry to avoid downloading and evaling a new nixpkgs version every time
        registry = lib.mapAttrs (_: v: {flake = v;}) flakeInputs;
    
        # set the path for channels compat
        nixPath = lib.mapAttrsToList (key: _: "${key}=flake:${key}") config.nix.registry;
    
        settings = {
          auto-optimise-store = true;
              builders-use-substitutes = true;
          experimental-features = ["nix-command" "flakes"];
          flake-registry = "/etc/nix/registry.json";
    
          # for direnv GC roots
          keep-derivations = true;
          keep-outputs = true;
    
          trusted-users = ["root" "@wheel"];
        };
    };
}
