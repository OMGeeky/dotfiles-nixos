{
    self,
    ...
    }: let 
        
        homeModulesPath = "${self}/home/";
    in 
    {
    imports = [
        # default config for pc
#        ../. 

        # editors
        ../../../editors/helix

        # programs
        ../../../progs
        ../../../progs/wayland
#        ../../../programs/wayland

        # media services
#        "${homeModulesPath}/services/media/playerctl.nix"
#        ../../../services/media/spotifyd.nix

        # system services
#        "${homeModulesPath}/services/system/kdeconnect.nix"
#        "${homeModulesPath}/services/system/polkit-agent.nix"
#        "${homeModulesPath}/services/system/theme.nix"

#        ../../../services/wayland/hyprpaper.nix
#        ../../../services/wayland/hypridle.nix

    ];
}
