{pkgs, ...}: {
  # language environments and lsp-servers
  home.packages = with pkgs; [
    gcc
    gnumake
    marksman
    go
    gopls
    gofumpt
    golangci-lint
    golangci-lint-langserver
    nil
    alejandra
    texliveFull
    stylua
    lua-language-server
  ];

  home.sessionPath = [
    "$HOME/development/go/bin"
  ];
  home.sessionVariables = {
    GOPATH = "$HOME/development/go";
  };
}
