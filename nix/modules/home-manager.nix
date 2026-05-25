# nix/modules/home-manager.nix — auto-generated from lava-akeyless.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.lava-akeyless; in {
  options.programs.lava-akeyless = {
    enable = lib.mkEnableOption "lava-akeyless";
    package = lib.mkOption { type = lib.types.package; default = pkgs.lava-akeyless or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
