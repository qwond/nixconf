{pkgs, ...}: {
  # language environments and lsp-servers
  home.packages = with pkgs; [
    marksman
    go
    gopls
    nil
    alejandra
  ];

  home.sessionVariables = {
    GOPATH = "$HOME/development/go";
  };
}
