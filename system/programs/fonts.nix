{pkgs, ...}:{
    fonts = {
        packages = with pkgs; [
            font-awesome

            kdePackages.breeze-icons
#            adwaita-icon-theme
            jetbrains-mono
        ]++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);
    
        #apparently causes more issues than it solves
        enableDefaultPackages = false;
    };
}
