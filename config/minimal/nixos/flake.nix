{
  description = "A minimal flake for NixOS";
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs";
    };
  };
  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    system = "x86_64-linux"; # Your system here
    pkgs = import nixpkgs {
      inherit system;
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      modules = [./configuration.nix];
      specialArgs = {
        inherit pkgs;
      };
    };
  };
}
