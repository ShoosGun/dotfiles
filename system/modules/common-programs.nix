{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    #terminal tools
    fastfetch
    wget
    imagemagick
    just
    xclip
    timg
    w3m
    quickemu
    jq
    wine
    unzip
    zip
    android-file-transfer
    #misc
    #openscad
    #freecad
    #ltspice
    (anydesk.overrideAttrs {
      version = "6.3.3";

      src = fetchurl {
        urls = [
          "https://download.anydesk.com/linux/anydesk-6.3.3-amd64.tar.gz"
          "https://download.anydesk.com/linux/generic-linux/anydesk-6.3.3-amd64.tar.gz"
        ];
        hash = "sha256-uSotkFOpuC2a2sRTagY9KFx3F2VJmgrsn+dBa5ycdck=";
      };
    })
    obs-studio
    ardour
    vlc
    (prismlauncher.override { jdks = [ jdk8 jdk17 ]; })
    sioyek
    todoman
    vdirsyncer
    logseq
    nixfmt-rfc-style
  ];
}
