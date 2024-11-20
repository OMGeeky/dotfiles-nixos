{config, ...}: let 
    cache = config.xdg.cacheHome;
in {
    imports = [
        ./programs
        ./shells/zsh
    ];

    home.sessionVariables = {
        LESSHISTFILE = "${cache}/less/history";
        LESSKEY = "${cache}/less/lesskey";

        EDITOR = "nvim";

    };

#    programs.zsh = {
#        enable = true;
#        autosuggestions.enable = true;
#        autocd = true;
#    };
}
