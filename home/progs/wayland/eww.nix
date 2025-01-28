{pkgs, ... }:{ 
    programs.eww = {
        enable = true;
        configDir = ./config/eww;
    };
    home.packages = with pkgs;[
        bash
        gawk # gnu implementation of awk
        coreutils # should include stdbuf & seq
        gnugrep # gnu implementation of grep
        socat
        jq
        python3
    ];
}
