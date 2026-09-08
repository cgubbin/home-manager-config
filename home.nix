{
  config,
  pkgs,
  ...
}: {
  nixpkgs = {
    config.allowUnfree = true;
  };
  home.username = "cgubbin";
  home.homeDirectory = "/home/cgubbin";

  home.stateVersion = "26.05"; # Please read the comment before changing.

  imports = [
    ./cli
    ./dev
    ./tools
  ];

  home.packages = [
    pkgs._1password-cli
    pkgs.cacert
    pkgs.goofys
    pkgs.klayout
    pkgs.wget

    # orchestration
    pkgs.ansible
    pkgs.doctl
    (pkgs.google-cloud-sdk.withExtraComponents [pkgs.google-cloud-sdk.components.gke-gcloud-auth-plugin])
    pkgs.krew
    pkgs.kubectl
    pkgs.kubectx
    pkgs.kubelogin-oidc
    pkgs.k9s
  ];

  home.file = {
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/cgubbin/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
    BROWSER = /mnt/c + builtins.toPath "/Program Files" + builtins.toPath "/Mozilla Firefox" + builtins.toPath "/firefox.exe";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
