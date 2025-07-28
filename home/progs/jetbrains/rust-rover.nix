{pkgs, ... }: {
    home.packages = with pkgs; [
#        (jetbrains.plugins.addPlugins
#            jetbrains.rust-rover [ "17718"] #github-copilot
#        )
    ];
}
