{
  nix-config.apps.distrobox = {
    home = { pkgs, ... }: { home.packages = [ pkgs.distrobox ]; };

    tags = [ "distrobox" ];
  };

  nix-config.defaultTags = { distrobox = true; };
}
