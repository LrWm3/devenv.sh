{ pkgs, ... }:

# TODO - add this -> https://direnv.net/

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [ 
    pkgs.git
    pkgs.jq
    pkgs.yq
    pkgs.libffi
    pkgs.openjdk11-bootstrap
    pkgs.zlib
    pkgs.ffmpeg
    pkgs.conda
  ];

  enterShell = ''
    hello
    git --version
  '';

  # https://devenv.sh/languages/
  languages.nix.enable = true;
  languages.python.enable = true;
  languages.typescript.enable = true;
  languages.javascript.enable = true;
  languages.java.enable = true;

  # https://devenv.sh/scripts/
  # scripts.hello.exec = "echo hello from $GREET";

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";
}
