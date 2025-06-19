{ ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableVteIntegration = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    initContent = ''
      setopt PROMPT_SUBST
      export PROMPT=$'%n@%m %3~ \n%% ' 
    '';
  };
}
