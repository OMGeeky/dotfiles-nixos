{ pkgs, ... }:
{
		home.packages = with pkgs; [
				android-studio
				jetbrains-toolbox
		];
		home.sessionPath = [
				"~/.local/share/JetBrains/Toolbox/scripts"
		];

}
