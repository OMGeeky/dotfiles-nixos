{ inputs, ... }:

{
	programs.hyprpanel = {
		enable = true;
# Configure and theme almost all options from the GUI.
# See 'https://hyprpanel.com/configuration/settings.html'.
# Default: <same as gui>
		settings = {

# Configure bar layouts for monitors.
# See 'https://hyprpanel.com/configuration/panel.html'.
# Default: null
			layout = {
				bar.layouts = {
					"0" = {
						left = [ "dashboard" "workspaces" ];
						middle = [ "media" ];
						right = [ "netstat" "hypridle" "volume" "systray" "notifications" ];
					};
				};
			};

			bar.launcher.autoDetectIcon = true;
			bar.workspaces.show_icons = true;

			menus.clock = {
				time = {
					military = true;
					hideSeconds = false;
				};
				weather.enabled = false;
				weather.unit = "metric";
			};

			menus.dashboard.directories.enabled = false;
			menus.dashboard.stats.enable_gpu = true;

			theme.bar.transparent = true;

			theme.font = {
				name = "CaskaydiaCove NF";
				size = "16px";
			};
		};
	};
}
