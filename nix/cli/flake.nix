{
  description = "Hereabout CLI";

  inputs = {
     nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
     flake-utils.url = "github:numtide/flake-utils";
     hereaboutPkg.url = "github:Hereabout/hereabout-mono";
  };

  outputs = { self, nixpkgs, flake-utils, hereaboutPkg }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let pkgs = nixpkgs.legacyPackages.${system};
          hereabout = hereaboutPkg.packages.${system}.default;
          lib =  nixpkgs.lib;
      in {
        devShell = pkgs.mkShell rec {
          buildInputs = [
            hereabout
          ];
        };
      });
}