{pkgs, ... }: {
    home.packages = with pkgs; [
        dotnet-sdk
        (jetbrains.plugins.addPlugins
            jetbrains.rider [ "17718"] #github-copilot
        )
    ];
}
