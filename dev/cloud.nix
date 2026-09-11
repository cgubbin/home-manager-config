{pkgs, ...}: {
  programs.awscli = {
    enable = true;
  };

  home.packages = (
    with pkgs; [
      ansible
      doctl

      goofys
      (google-cloud-sdk.withExtraComponents [google-cloud-sdk.components.gke-gcloud-auth-plugin])
      krew
      kubectl
      kubectx
      kubelogin-oidc
      k9s
      opentofu
      terraform
    ]
  );
}
