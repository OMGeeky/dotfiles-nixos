{pkgs, ... }: {
    home.packages = with pkgs; [
        (jetbrains.plugins.addPlugins
            jetbrains.rider [ "17718"] #github-copilot
        )
    ];
}
