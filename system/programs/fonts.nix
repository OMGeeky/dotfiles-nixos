{pkgs, ...}:{
    fonts = {
        packages = with pkgs; [
            font-awesome
            nerdfonts

            jetbrains-mono
        ];
    
        #apparently causes more issues than it solves
        enableDefaultPackages = false;
    };
}
