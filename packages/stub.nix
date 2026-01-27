{pkgs ? import <nixpkgs> {}}:
pkgs.stdenv.mkDerivation {
  pname = "stub-bin";
  version = "v1.0.0";
  src = ../tars/stub-v1.0.0.tar.gz;

  dontBuild = true;
  dontConfigure = true;
  dontUnpack = true;
  dontCheck = true;

  installPhase = ''
    mkdir -p $out
    tar -xzf $src -C $out
  '';
}
