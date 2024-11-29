{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        (jetbrains.plugins.addPlugins
            jetbrains.rider [ "github-copilot" ]
            jetbrains.rust-rover [ "github-copilot" ]
            jetbrains.pycharm-professional [ "github-copilot" ]
        )
    ];
}
