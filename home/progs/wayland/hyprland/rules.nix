{lib, ...}: {
  wayland.windowManager.hyprland.settings = {
    # layer rules
    layerrule = let
      toRegex = list: let
        elements = lib.concatStringsSep "|" list;
      in "^(${elements})$";

      lowopacity = [
        "bar"
        "calendar"
        "notifications"
        "system-menu"
      ];

      highopacity = [
        "anyrun"
        "rofi"
        "osd"
        "logout_dialog"
      ];

      blurred = lib.concatLists [
        lowopacity
        highopacity
      ];
    in [
      "blur, ${toRegex blurred}"
      "xray 1, ${toRegex ["bar"]}"
      "ignorealpha 0.5, ${toRegex (highopacity ++ ["music"])}"
      "ignorealpha 0.2, ${toRegex lowopacity}"
    ];

    # window rules
    windowrulev2 = [
      # gnome calculator
      "float, class:^(org.gnome.Calculator)$"
      "size 360 490, class:^(org.gnome.Calculator)$"

      # allow tearing in games
      "immediate, class:^(osu\!|cs2)$"

      # make Firefox/Zen PiP window floating and sticky
      "float, title:^(Picture-in-Picture)$"
      "pin, title:^(Picture-in-Picture)$"

      # throw sharing indicators away
      "workspace special silent, title:^(Firefox — Sharing Indicator)$"
      "workspace special silent, title:^(Zen — Sharing Indicator)$"
      "workspace special silent, title:^(.*is sharing (your screen|a window)\.)$"

      # make sure clipse is floating and the right size (clipboard manager)
      "float, class:(clipse)"
      "size 622 652, class:(clipse)"

      # start spotify in ws9
      "workspace 9 silent, title:^(Spotify( Premium)?)$"

      # idle inhibit while watching videos
      "idleinhibit focus, class:^(mpv|.+exe|celluloid)$"
      "idleinhibit focus, class:^(zen)$, title:^(.*YouTube.*)$"
      "idleinhibit fullscreen, class:^(zen)$"

      "dimaround, class:^(gcr-prompter)$"
      "dimaround, class:^(xdg-desktop-portal-gtk)$"
      "dimaround, class:^(polkit-gnome-authentication-agent-1)$"

      # fix xwayland apps
      "rounding 0, xwayland:1"
      "center, class:^(.*jetbrains.*)$, title:^(Confirm Exit|Open Project|win424|win201|splash)$"
      "size 640 400, class:^(.*jetbrains.*)$, title:^(splash)$"


      # some Jetbrains fixes (https://youtrack.jetbrains.com/issue/IJPL-61714/Popups-not-working-correctly-with-Wayland-Hyprland)
#      "noinitialfocus,class:^jetbrains-(?!toolbox),floating:1"
      # center the pops excepting context menu
#      "move 30% 30%,class:^jetbrains-(?!toolbox),title:^(?!win.*),floating:1"
#      "size 40% 40%,class:^jetbrains-(?!toolbox),title:^(?!win.*),floating:1"

      # fix tooltips (always have a title of `win.<id>`) (https://github.com/hyprwm/Hyprland/issues/4257#issuecomment-2759517981)
      "noinitialfocus, class:^(.*jetbrains.*)$, title:^(win.*)$"
      "nofocus, class:^(.*jetbrains.*)$, title:^(win.*)$"
      # fix tab dragging (always have a single space character as their title)
      "noinitialfocus, class:^(.*jetbrains.*)$, title:^\\s$"
      "nofocus, class:^(.*jetbrains.*)$, title:^\\s$"

#      "minsize 300 300, class:(Unity) !(initialTitle:(UnityTooltipWindow))" 
    ];
  };
}
