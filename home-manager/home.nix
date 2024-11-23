{
  imports = [
    ./zsh.nix
    ./tmux.nix
    # ./waybar.nix
  ];

  home = {
    username = "amper";
    homeDirectory = "/home/amper";
    stateVersion = "23.11";
  };

  programs.git = {
    enable = true;
    userName = "Andrey0189";
    userEmail = "varnavsky06@gmail.com";
  };
}
