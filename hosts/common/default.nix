{pkgs, ...}: {
  imports = [
    ./netutils.nix
    ./productivity.nix
  ];

  environment.defaultPackages = with pkgs; [
    bat
    bc
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

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  environment.variables = {
    EDITOR = "nvim";
    PAGER = "bat";
  };
}
