# nix/modules/darwin.nix — auto-generated from lava-akeyless.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.lava-akeyless; in {
  options.services.lava-akeyless = {
    enable = lib.mkEnableOption "lava-akeyless";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-akeyless or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
