{ pkgs ? import <nixpkgs> {} }:

with pkgs;
with xorg;

stdenv.mkDerivation {
  name = "st-0.7ish";
  buildInputs = [ pkgconfig libX11 ncurses libXext libXft libXrender fontconfig ];
  src = ./.;
}
