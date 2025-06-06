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

        ../../../progs/jetbrains/intellij.nix

        # media services
        ../../../services/media/playerctl.nix

        # system services
        ../../../services/system/polkit-agent.nix
        ../../../services/system/theme.nix

        ../../../services/wayland/hyprpaper.nix
        ../../../services/wayland/hypridle.nix
    ];
}
