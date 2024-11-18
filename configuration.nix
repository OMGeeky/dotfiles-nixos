{ config, pkgs, ... }:
{
    imports = [
        ./hardware-configuration.nix
    ];

    users.users.omgeeky = {
        isNormalUser = true;
        description = "ogmeeky";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = with pkgs; [
            firefox
            kitty
        ];
    };
}
