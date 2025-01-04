{ ... }: 
let
inherit (builtins) attrNames readDir filter;
allFiles = attrNames (readDir ./.);
modules = filter (file: file != "default.nix") allFiles;

in {
  imports = map (file: ./. + "/${file}") modules;
}
