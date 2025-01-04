{
  nix-config.apps.nix-shell = {
    home = { ... }: let
      aliases = {
        nix-shell = "nix-shell --run zsh";
      };
    in { 
      programs.zsh = { shellAliases = aliases; };
    };

    tags = [ "nix-shell" ];
  };

  nix-config.defaultTags = { nix-shell = true; };
}
