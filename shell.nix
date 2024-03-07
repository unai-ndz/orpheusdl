let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.defusedxml
      python-pkgs.protobuf
      python-pkgs.pycryptodomex
      python-pkgs.requests
      python-pkgs.pillow
      python-pkgs.tqdm
      python-pkgs.mutagen
      python-pkgs.ffmpeg-python
      python-pkgs.m3u8
    ]))
  ];
}
