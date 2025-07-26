# Networking utilities
{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    curl
    wget
    netcat
    nmap
    dig
  ];
}
