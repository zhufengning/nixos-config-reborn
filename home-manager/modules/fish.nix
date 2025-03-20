{ config, pkgs, ... }: {
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    loginShellInit = ''
      if uwsm check may-start > /dev/null && uwsm select
          exec systemd-cat -t uwsm_start uwsm start default
      end'';
    shellInit = ''
      if test -z "$TMUX" && test -n "$DISPLAY"
          tmux attach-session -t default || tmux new-session -s default
      end'';
    plugins = [
      # Enable a plugin (here grc for colorized command output) from nixpkgs
      {
        name = "grc";
        src = pkgs.fishPlugins.grc.src;
      }
      # Manually packaging and enable a plugin
      {
        name = "z";
        src = pkgs.fishPlugins.z.src;
      }
    ];
  };
}
