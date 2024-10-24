{
  description = "Dhall example";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
    hereaboutPkg.url = "github:Hereabout/hereabout-mono?ref=main";
  };

  outputs = { self, nixpkgs, utils, hereaboutPkg }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };


      in {
        devShells.default = pkgs.mkShell {
          buildInputs = [ 
            pkgs.dhall 
            pkgs.dhall-lsp-server
            pkgs.ulid
          ];
        };

        devShells.hcli = 
          let hereabout = hereaboutPkg.packages.${system}.default;
          in pkgs.mkShell rec {
              buildInputs = [
                hereabout
              ];
            };
      }
    );
}