# NixOS

Disko partitioning

```sh
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount hosts/karakum/disko.nix
```
