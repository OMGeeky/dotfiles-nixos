{pkgs, ... }: {
    home.packages = with pkgs; [
        (jetbrains.plugins.addPlugins
            jetbrains.pycharm-professional [ "17718"] #github-copilot
        )
    ];
}
