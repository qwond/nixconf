{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableVteIntegration = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    plugins = [
      {
        name = "pure";
        src = pkgs.fetchFromGitHub {
          owner = "sindresorhus";
          repo = "pure";
          rev = "5c2158096cd992ad73ae4b42aa43ee618383e092";
          sha256 = "sha256-m4vCfX/IwByQN0OvcwDs+fy6LYndhGbNDQueOCREVx8=";
        };
      }
    ];

    initContent = ''
      # Initialize zsh-async before pure
      PURE_PROMPT_SYMBOL=λ
      autoload -U promptinit; promptinit
      prompt pure
    '';
  };
}
