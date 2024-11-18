{inputs, ...}: {
    inports = [
        inputs.hm.nixosModules.default
    ];
    home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;
    };
}
