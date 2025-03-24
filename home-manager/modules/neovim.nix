{ inputs, pkgs, ... }: {
  programs.neovim = {
    enable = true;
    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
    extraPackages = with pkgs; [
      lua-language-server
      python311Packages.python-lsp-server
      nixd
      vimPlugins.nvim-treesitter-parsers.hyprlang
      nil
      nodePackages.lua-fmt
      nixfmt-rfc-style
      yaml-language-server
      wl-clipboard
      lemminx
    ];
  };
}
