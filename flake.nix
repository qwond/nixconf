# vim: sw=2 ts=2 expandtab
{
  description = "nxos configuration";

  inputs = {
# NixOS
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

#Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { 
    self, 
    nixpkgs,
    home-manager,
    ... }@ inputs: let
      inherit(self) outputs;
    in {

      nixosConfigurations.aegis = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./nixos/configuration.nix
        ];
      };

      homeConfigurations = {
        "dmitry@aegis" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages.x86_64-linux; 
          extraSpecialArgs = {inherit inputs outputs;};
          modules = [./home];
        };
      };

    };
}
