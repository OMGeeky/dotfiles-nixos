{pkgs, ... }: {
    home.packages = with pkgs; [
#        (jetbrains.plugins.addPlugins
            jetbrains.rust-rover #[ "github-copilot"]
#        )
    ];
}
