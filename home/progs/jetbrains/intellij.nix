{pkgs, inputs, ... }: 
let
    pluginList = [
        "org.jetbrains.junie"
        "com.github.copilot"
    ];
    ideaWithPlugins = inputs.jetbrains-plugins.lib."${pkgs.system}".buildIdeWithPlugins pkgs.jetbrains "idea-ultimate" pluginList;
in {
    home.packages = [ 
        ideaWithPlugins
    ];
}
