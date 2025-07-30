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
			bar.layouts = {
				"*"= {
					left = [
						"dashboard"
						"workspaces"
					];
					middle = [
						"media"
						"clock"
					];
					right= [
#						"netstat"
						"cpu"
						"cputemp"
						"ram"
						"separator"
						"systray"
						"separator"
						"bluetooth"
						"network"
						"hypridle"
						"battery"
						"power"
						"volume"
					];
				};

			};

#			bar.launcher.autoDetectIcon = true;
#			bar.workspaces.show_icons = true;

#			menus.clock = {
#				time = {
# 					military = true;
# 					hideSeconds = false;
# 				};
# 				weather.enabled = false;
# 				weather.unit = "metric";
# 			};

# 			menus.dashboard.directories.enabled = false;
# 			menus.dashboard.stats.enable_gpu = false;

# 			theme.bar.transparent = true;

# 			theme.font = {
# 				name = "JetBrainsMono Nerd Font Medium";
# 				size = "14px";
# 			};

			theme.font.name= "JetBrainsMono Nerd Font";
			theme.font.label= "JetBrainsMono Nerd Font Medium";
			theme.font.size= "14px";
			theme.bar.floating= false;
			theme.bar.buttons.y_margins= "0.25em";
			theme.bar.border.location= "none";
			theme.bar.border_radius= "0.4em";
			theme.bar.outer_spacing= "0.6em";
			theme.bar.buttons.spacing= "0.25em";
			theme.bar.buttons.padding_x= "0.4rem";
			theme.bar.buttons.padding_y= "0.0rem";
			theme.bar.buttons.radius= "0.4em";
			theme.bar.buttons.innerRadiusMultiplier= "0.4";
			theme.bar.layer= "overlay";
			bar.scrollSpeed= 2;
			theme.bar.buttons.separator.margins= "0.4em";
			theme.bar.buttons.separator.width= "0.1em";
			bar.launcher.autoDetectIcon= true;
			theme.bar.buttons.dashboard.enableBorder= false;
			theme.bar.buttons.enableBorders= false;
			theme.bar.buttons.workspaces.enableBorder= true;
			bar.workspaces.monitorSpecific= true;
			bar.workspaces.show_icons= false;
			bar.workspaces.show_numbered= false;
			bar.workspaces.workspaceMask= false;
			bar.workspaces.showWsIcons= true;
			bar.workspaces.showApplicationIcons= true;
			menus.media.displayTime= false;
			menus.media.hideAlbum= false;
			menus.media.hideAuthor= false;
			notifications.timeout= 5000;
			theme.osd.enable= true;
			menus.clock.weather.enabled= false;
			menus.clock.weather.unit= "metric";
			menus.clock.weather.location= "Freiburg im Breisgau";
			menus.clock.time.military= true;
			menus.dashboard.shortcuts.left.shortcut1.command= "firefox";
			menus.dashboard.shortcuts.left.shortcut1.tooltip= "Firefox";
			menus.dashboard.shortcuts.right.shortcut1.command= "sleep 0.2 && hyprpicker -a";
			menus.dashboard.directories.left.directory3.command= "bash -c \"xdg-open $HOME/projects/\"";
			bar.customModules.hypridle.label= false;
			theme.bar.buttons.modules.power.enableBorder= false;
			theme.matugen= false;

		};
	};

}


# TODO: convert this json config to nix
# TODO: remove default values
# {
#   "theme.bar.enableShadow": false,
#   "bar.layouts": {
#     "*": {
#       "left": [
#         "dashboard",
#         "workspaces"
#       ],
#       "middle": [
#         "media",
#         "clock"
#       ],
#       "right": [
#         "cpu",
#         "cputemp",
#         "ram",
#         "netstat",
#         "separator",
#         "systray",
#         "separator",
#         "bluetooth",
#         "network",
#         "hypridle",
#         "battery",
#         "power",
#         "volume",
#         "notifications"
#       ]
#     }
#   },
#   "theme.font.name": "JetBrainsMono Nerd Font",
#   "theme.font.label": "JetBrainsMono Nerd Font Medium",
#   "theme.font.size": "14px",
#   "theme.bar.floating": false,
#   "theme.bar.buttons.y_margins": "0.25em",
#   "theme.bar.border.location": "none",
#   "theme.bar.border_radius": "0.4em",
#   "theme.bar.outer_spacing": "0.6em",
#   "theme.bar.buttons.spacing": "0.25em",
#   "theme.bar.buttons.padding_x": "0.4rem",
#   "theme.bar.buttons.padding_y": "0.0rem",
#   "theme.bar.buttons.radius": "0.4em",
#   "theme.bar.buttons.innerRadiusMultiplier": "0.4",
#   "theme.bar.layer": "overlay",
#   "bar.scrollSpeed": 2,
#   "theme.bar.buttons.separator.margins": "0.4em",
#   "theme.bar.buttons.separator.width": "0.1em",
#   "bar.launcher.autoDetectIcon": true,
#   "theme.bar.buttons.dashboard.enableBorder": false,
#   "theme.bar.buttons.enableBorders": false,
#   "theme.bar.buttons.workspaces.enableBorder": true,
#   "bar.workspaces.monitorSpecific": true,
#   "bar.workspaces.show_icons": false,
#   "bar.workspaces.show_numbered": false,
#   "bar.workspaces.workspaceMask": false,
#   "bar.workspaces.showWsIcons": true,
#   "bar.workspaces.showApplicationIcons": true,
#   "menus.media.displayTime": false,
#   "menus.media.hideAlbum": false,
#   "menus.media.hideAuthor": false,
#   "notifications.timeout": 5000,
#   "theme.osd.enable": true,
#   "menus.clock.weather.enabled": false,
#   "menus.clock.weather.unit": "metric",
#   "menus.clock.weather.location": "Freiburg im Breisgau",
#   "menus.clock.time.military": true,
#   "menus.dashboard.shortcuts.left.shortcut1.command": "firefox",
#   "menus.dashboard.shortcuts.left.shortcut1.tooltip": "Firefox",
#   "menus.dashboard.shortcuts.right.shortcut1.command": "sleep 0.2 && hyprpicker -a",
#   "menus.dashboard.directories.left.directory3.command": "bash -c \"xdg-open $HOME/projects/\"",
#   "bar.customModules.hypridle.label": false,
#   "theme.bar.buttons.modules.power.enableBorder": false,
#   "theme.matugen": false
# }

