{ pkgs, ... }: {
    home.packages = with pkgs; [
        tlrc # tldr-client (official rust-client)
    ];
}
