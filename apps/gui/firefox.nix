{
  nix-config.apps.firefox = {
    home = { pkgs, ... }: {
      programs.firefox = {
        package = pkgs.firefox;
        enable = true;
      };
    };

    tags = [ "webdev" "browser" "firefox" ];
  };

  nix-config.defaultTags = { webdev = false; firefox = false; browser = false; };
}

