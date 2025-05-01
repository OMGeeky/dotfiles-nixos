{...}:{
    imports = [
#        ./nvidia-bus-id.nix
        ./hardware-configuration.nix
    ];
    networking = {
        hostName = "nixos";
        networkmanager.enable = true;
        firewall = {
            enable = true;
            allowedTCPPorts = [ 54321 ];
        };
    };
    security.tpm2.enable = true;
}
