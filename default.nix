# install package with: nix-env -f . -i
{
  pkgs ? import <nixpkgs> { },
}:

pkgs.python3Packages.buildPythonPackage {
  pname = "psptool";
  version = "3.0";
  src = ./.;

  pyproject = true;

  propagatedBuildInputs = with pkgs.python3Packages; [
    setuptools
    setuptools_scm
    cryptography
    prettytable
  ];

  build-system = with pkgs.python3Packages; [ setuptools ];
  checkInputs = with pkgs.python3Packages; [ pytest ];
  doCheck = true;
}
