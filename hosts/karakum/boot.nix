{
  pkgs,
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.initrd.availableKernelModules = ["xhci_pci" "nvme" "usb_storage" "sd_mod" "i915"];
  boot.initrd.kernelModules = ["i915"];
  boot.kernelModules = ["kvm-intel" "i915"];
  boot.kernelParams = ["i915.modeset=1"];
  boot.extraModulePackages = [];
}
