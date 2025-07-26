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
    ghostscript
    stylua
    lua-language-server
    lua
    selene
    luarocks
    shfmt
    yamlfmt
    typstfmt
    taplo
    prettier
    isort
    markdownlint-cli2
    tree-sitter
  ];

  home.sessionPath = [
    "$HOME/development/go/bin"
  ];
  home.sessionVariables = {
    GOPATH = "$HOME/development/go";
  };
}
