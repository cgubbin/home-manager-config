{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./completion.nix
    ./keymappings.nix
    ./options.nix
    # ./plugins
    ./themes.nix
  ];

  programs.nixvim = {
    enable = true;
    vimdiffAlias = true;
    impureRtp = true;
    withPython3 = true;

    nixpkgs.useGlobalPackages = true;
  };
}
