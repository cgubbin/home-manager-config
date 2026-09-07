switch:
    #!/usr/bin/env bash
    set -euo pipefail

    home-manager switch --flake . -b backup

update:
    #!/usr/bin/env bash
    set -euo pipefail

    nix flake update



