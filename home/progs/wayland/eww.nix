{ self, ... }: {
    programs.eww = {
        enable = true;
        configDir = "${self}"/configs/eww;
    };
}
