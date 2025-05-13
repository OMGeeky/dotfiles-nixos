{pkgs, ...}: {
    users.users = {
        omgeeky = {
            isNormalUser = true;
            shell = pkgs.zsh;
            extraGroups = [
                "input"
                "libvirtd"
                "networkmanager"
                "plugdev"
                "transmission"
                "video"
                "wheel"
                "docker"
                "dialout" # needed for esp32 development
            ];
        };

        test = {
            isNormalUser = true;
            shell = pkgs.zsh;
            extraGroups = [
                "video"
                "input"
                "networkmanager"
            ];
        };
    };
}
