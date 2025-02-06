{}: {
  home.sessionVariables = {
    PATH = "~/development/go/bin:${builtins.getEnv "PATH"}";
  };
  programs.go = {
    enable = true;
    goPath = "/development/go";
    goBin = "/development/go/bin";
  };
}
