{
  nix-config.apps.gnome = {
    nixos = { pkgs, ... }: {
      services.xserver = {
        enable = true;
        displayManager.gdm.enable = true;
        desktopManager.gnome.enable = true;
      };
    };

    tags = [ "gnome" ];
  };

  nix-config.defaultTags = { gnome = true; };
}
