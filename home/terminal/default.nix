{config, ...}: let 
    data = config.xdg.dataHome;
    conf = config.xdg.configHome;
    cache = config.xdg.cacheHome;
in {
    imports = [
        ./programs
        ./shell/zsh.nix
    ];

    home.sessionVariables = {
        LESSHISTFILE = "${cache}/less/history";
        LESSKEY = "${cache}/less/lesskey";

        EDITOR = "nvim";

    };
}
