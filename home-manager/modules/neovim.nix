{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    extraPackages = with pkgs; [
      lua-language-server
      vscode-langservers-extracted
      nixd
    ];
  };
}
