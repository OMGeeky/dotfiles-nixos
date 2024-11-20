{ ... }: {
    imports = [
        # default config for pc
        ../. 

        # editors
        ../../../editors/helix

        # terminal stuff
        ../../../terminal
        ../../../terminal/emulators/kitty.nix

        # programs
        ../../../progs
        ../../../progs/wayland

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
}
