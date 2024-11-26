{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = ",1920x1080@60,auto,1";
      "$mainMod" = "SUPER";
      "$terminal" = "alacritty";
      "$fileManager" = "$terminal -e sh -c 'lf'";
      "$menu" = "fuzzel";

      exec-once = [
        "swww-daemon"
        "swww img ~/Downloads/wp.png"
        "sleep 5 && waybar"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
      ];

      input = {
        kb_layout = "us,ru";
        kb_options = "grp:caps_toggle";
      };

      general = {
        gaps_in = 0;
        gaps_out = 0;

        border_size = 5;

        "col.active_border" = "rgba(d65d0eff) rgba(98971aff) 45deg";
        "col.inactive_border" = "rgba(3c3836ff)";

        resize_on_border = true;

        allow_tearing = false;
        layout = "master";
      };

      decoration = {
        shadow = {
          enabled = false;
        };

        blur = {
          enabled = false;
        };
      };

      animations = {
        enabled = false;
      };

      windowrulev2 = [
        "bordersize 0, floating:0, onworkspace:w[t1]"
        "float,class:(mpv)|(imv)"
        "workspace 3,class:(obsidian)"
        "workspace 4,class:(com.obsproject.S"
        "workspace 5,class:(telegram)"
        "workspace 6,class:(teams-for-linux)"
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
      ];

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = false;
        workspace_swipe_forever	= true;
      };
    };
  };
}
