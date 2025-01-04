{
  nix-config.apps.fonts = {
    nixos = { pkgs, ... }: {
      fonts.packages = with pkgs;
        [
          nerdfonts
        ];
    };

    tags = [ "fonts" ];
  };

  nix-config.defaultTags = { fonts = true; };
}
