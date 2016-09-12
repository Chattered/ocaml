{ pkgs ? (import <nixpkgs> {}).pkgs
}:

let
  myemacs =
    with pkgs.emacsPackages; with pkgs.emacsPackagesNg; pkgs.emacsWithPackages
      [ magit tuaregMode ];
in with pkgs; stdenv.mkDerivation {
  name = "ocaml_toploop";
  buildInputs = [
    ocamlPackages.merlin ocamlPackages.ocaml myemacs ];
  findlib = "${ocamlPackages.findlib}/lib/ocaml/4.01.0/site-lib/";
  merlin  = "${ocamlPackages.merlin}";
}
