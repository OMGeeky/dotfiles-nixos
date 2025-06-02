{ ... }: {
    imports = [
        # default config for pc
        ../. 

        # options
        ../../../options

        # editors
        ../../../editors/helix

        # terminal stuff
        ../../../terminal
        ../../../terminal/emulators/kitty.nix
        ../../../terminal/programs/lazygit.nix

        # programs
        ../../../progs
        ../../../progs/wayland
        ../../../progs/jetbrains
        ../../../progs/jetbrains/rust-rover.nix
        ../../../progs/jetbrains/intellij.nix
        ../../../progs/jetbrains/rider.nix
        ../../../progs/jetbrains/pycharm.nix
        ../../../progs/gamedev/unity.nix
        ../../../progs/discord.nix

        # media services
        ../../../services/media/playerctl.nix
#        ../../../services/media/spotifyd.nix

        # system services
        ../../../services/system/kdeconnect.nix
        ../../../services/system/polkit-agent.nix
        ../../../services/system/theme.nix

        ../../../services/wayland/hyprpaper.nix
        ../../../services/wayland/hypridle.nix
    ];

    rust-tools.enable = true;


}
