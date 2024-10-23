{
  description = "Dhall example";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
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
      }
    );
}