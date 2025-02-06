{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:{
  programs.zsh = {
    enable = true;

    autocd = true;
    enableCompletion = true;
    enableVteIntegration = true;
    syntaxHighlighting.enable = true;

    autosuggestion = {
      enable = true;
    };

    history = {
      size = 5000;
      save = 5000;
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
}
