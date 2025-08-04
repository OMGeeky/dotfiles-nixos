{ config, lib, pkgs, ... }: {
    # specify configs
    options.rust-tools = {
        enable = lib.mkEnableOption "Enable some Rust tools";
        packages = lib.mkOption {
            type = lib.types.listOf lib.types.package;
            default = with pkgs; [
                rustup
                gcc
                rustc
                openssl
#                cargo
#                rustfmt
#                clippy
#                rust-analyzer
            ];
        };

        # Add option to specify default Rust edition
        defaultEdition = lib.mkOption {
            type = lib.types.str;
            default = "2024";
            description = "Default Rust edition to use";
        };
    };

    # specify what happens with the configs
    config = lib.mkIf config.rust-tools.enable {
        home.packages = config.rust-tools.packages;
        # Set the default Rust edition in the shell environment
        home.shellAliases = {
            cargo-generate = "cargo generate --edition \${RUST_EDITION}";
        };

        home.sessionVariables = {
            RUST_EDITION = config.rust-tools.defaultEdition;
        };

#        home = import ../progs/jetbrains/rust-rover.nix;
    };    
}
