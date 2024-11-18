{...}:{
    imports = [
        ./nvidia-bus-id.nix
        ./hardware-configuration.nix
    ];
    networking.hostName = "nixos";
    security.tpm2.enable = true;
}
