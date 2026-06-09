# flake.nix — auto-generated from lava-akeyless.caixa.lisp
# Edit caixa source + re-render via:
#   pleme-doc-gen caixa --source lava-akeyless.caixa.lisp --out . --force
{
  description = "lava-akeyless — caixa-rendered Nix flake";

  inputs = {
    nixpkgs.follows = "substrate/nixpkgs";
    substrate = {
      url = "github:pleme-io/substrate";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs @ { self, nixpkgs, substrate, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "aarch64-darwin" "x86_64-linux" "aarch64-linux" ];
      perSystem = { pkgs, system, ... }: let
        builder = substrate.lib.${system}.rustToolReleaseFlakeBuilder;
      in {
        packages.default = builder {
          inherit pkgs;
          name = "lava-akeyless";
          src = ./.;
        };
        devShells.default = pkgs.mkShell {
          buildInputs = [ pkgs.git ];
        };
      };
    };
}
