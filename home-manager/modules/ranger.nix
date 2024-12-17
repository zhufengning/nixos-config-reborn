{
  programs.ranger = {
    enable = true;
    mappings = {
      e = "edit";
    };

    settings = {
      default_linemode = "devicons2";
    };

    plugins = [
      {
        name = "ranger-archives";
        src = builtins.fetchGit {
          url = "https://github.com/maximtrp/ranger-archives";
        };
      }
      {
        name = "ranger-devicons2";
        src = builtins.fetchGit {
          url = "https://github.com/cdump/ranger-devicons2";
        };
      }
    ];
  };
}
