switch:
    #!/usr/bin/env bash
    set -euo pipefail

    home-manager switch

update:
    #!/usr/bin/env bash
    set -euo pipefail

    nix-channel --update 



