#/nin/sh
set -e
sudo nix --experimental-features "nix-command flakes" \
    run github:nix-community/disko -- \
    --mode destroy,format,mount disko.nix \
    --arg device '"/dev/sda"' \
    --yes-wipe-all-disks

sudo nix-collect-garbage -d
sudo nixos-install --flake .#aegis
