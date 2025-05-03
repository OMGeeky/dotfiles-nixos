{pkgs, ... }: {
    home.packages = with pkgs; [
        (jetbrains.plugins.addPlugins
            jetbrains.idea-ultimate [ "17718"] #github-copilot
        )
    ];
}
