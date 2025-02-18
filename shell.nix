let
  pkgs = import (builtins.fetchGit rec {
    name = "dapptools-${rev}";
    url = https://github.com/dapphub/dapptools;
    rev = "f0d4c1834f2de763faa98cd308d8272b5880c6ab";
  }) {};

in
  pkgs.mkShell {
    src = null;
    name = "lootloose";
    buildInputs = with pkgs; [
      pkgs.dapp
    ];
  }
