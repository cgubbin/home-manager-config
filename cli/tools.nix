{
  config,
  lib,
  pkgs,
  ...
}: {
  home.packages = (
    with pkgs;
      [
        trash-cli
        dust
        duf
        dysk
        ripgrep
        htop
        procs

        yq-go
        jq
        just
        eza
        fd
        tree
        watch

        watchexec
        hurl

        nix-output-monitor
        noti
        killall
        wget
        tdf
        see-cat
        rsync
        # vault-tasks
        television
        restic
        unar

        hexyl
        nasm
        broot

        # Yazi functionality
        ffmpeg-headless
        p7zip
        poppler
        resvg
        imagemagick

        # Nix linting
        alejandra
        deadnix
        nixd
        nixfmt
        statix

        age
        aerc
        ast-grep
        hunspell
        semgrep
        shellcheck
        treefmt

        xclip
        grim
        slurp
        valgrind
        bandwhich
        proximity-sort
      ]
  );
  programs.eza = {
    enable = true;
    enableFishIntegration = true;
  };
}
