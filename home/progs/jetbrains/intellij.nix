{pkgs, inputs, system, ... }: 
let
    source = inputs.jetbrains-plugins.plugins."${system}";
    pluginList = [
        source."org.jetbrains.junie"
        source."com.github.copilot"
    ];

in {
    home.packages = with source; [
      buildIdeWithPlugins pkgs.jetbrains "idea-ultimate" pluginList 
    ];
}
