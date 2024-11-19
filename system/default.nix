let 
    desktop = [
        ./core
        ./core/boot.nix


#        ./programs

#        ./services
#        ./services/greetd.nix
#        ./services/pipewire.nix

        
#        ./hardware/bluetooth.nix

#        ./services/power.nix
    ];
in {
    inherit desktop;
}
