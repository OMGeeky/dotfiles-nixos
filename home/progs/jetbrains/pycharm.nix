{pkgs, ... }: {
    home.packages = with pkgs; [
        python3
#        (jetbrains.plugins.addPlugins
#            jetbrains.pycharm-professional [ "17718"] #github-copilot
#        )
    ];
}
