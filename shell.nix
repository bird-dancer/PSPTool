# spawn shell with: nix-shell
{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  packages = [
    pkgs.python3
    pkgs.python313Packages.setuptools
    pkgs.python313Packages.cryptography
    pkgs.python313Packages.prettytable
  ];
}
