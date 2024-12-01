{
  environment.sessionVariables = rec {
    TERMINAL = "alacritty";
    EDITOR = "nvim";
    # Hint Electron apps to use Wayland
    NIXOS_OZONE_WL = "1";
    XDG_BIN_HOME = "$HOME/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };
}
