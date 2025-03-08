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
