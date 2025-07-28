{pkgs, ...}:{
    fonts = {
        packages = with pkgs; [
            font-awesome
#            nerdfonts

            jetbrains-mono
        ]++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
    
        #apparently causes more issues than it solves
        enableDefaultPackages = false;
    };
}
