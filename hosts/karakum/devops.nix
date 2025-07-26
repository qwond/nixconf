{pkgs,...}: {

  virtualisation.docker = {
    enable = true;
  };

  environment.defaultPackages = with pkgs; [
    kind
    terraform
    kubectl
  ];
}
