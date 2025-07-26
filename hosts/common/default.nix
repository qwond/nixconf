{pkgs, ...}: {
  imports = [
    ./netutils.nix
  ];

  environment.defaultPackages = with pkgs; [
    file
    direnv
    vim
    fd
    ripgrep
    tree
    btop
    tmux
    bat
    yazi
    unzip
    p7zip
  ];

  environment.variables = {
    EDITOR = "vim";
    PAGER = "bat";
  };
}
