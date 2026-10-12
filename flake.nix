{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		zen-browser.url = "github:youwen5/zen-browser-flake";
		snappy-switcher.url = "github:OpalAayan/snappy-switcher";

    # Add the vitasdk input here
    vitasdk.url = "github:sleirsgoevy/vitasdk.nix";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      # inputs (including vitasdk) are passed into your modules here
      specialArgs = { inherit inputs; };
      modules = [
        ./configuration.nix
      ];
    };
  };
}

