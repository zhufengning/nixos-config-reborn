{
  description = "My system configuration";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix";

    #nixvim = {
    #  url = "github:nix-community/nixvim";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:

    let
      system = "x86_64-linux";
      stateVersion = "24.05";
      user = "amper";
      hostname = "slim3";
    in {

      # slim3 - system hostname
      nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs system stateVersion hostname user;
        };

        modules = [
          ./nixos/configuration.nix
        ];
      };

      homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        extraSpecialArgs = {
          inherit inputs stateVersion user;
        };

        modules = [
          ./home-manager/home.nix
        ];
      };
    };
}
