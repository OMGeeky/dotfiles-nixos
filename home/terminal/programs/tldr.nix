{ pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        tlrc # tldr-client (official rust-client)
    ];
}
