{lib, ...}:
# default configuration shared by all hosts
{
    imports = [
        ./security.nix
        ./users.nix
        ../nix
        ../programs/zsh.nix
    ];

    i18n = {
        defaultLocale = "en_US.UTF-8";
    };

    # don't touch this
    system.stateVersion = lib.mkDefault "25.05";

    time.timeZone = lib.mkDefault "Europe/Berlin";

}
