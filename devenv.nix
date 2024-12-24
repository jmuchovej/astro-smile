{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/basics/

  # https://devenv.sh/packages/
  packages = (with pkgs; [
    git
  ]);

  # https://devenv.sh/languages/
  languages.typescript  = {
    enable = true;
  };
  languages.javascript  = {
    enable              = true;
    pnpm.enable         = true;
    pnpm.install.enable = true;
  };

  # https://devenv.sh/processes/

  # https://devenv.sh/services/

  # https://devenv.sh/scripts/

  enterShell = ''
    echo "Working on \`astro-smile\`!"
  '';

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  enterTest = ''
    echo "Running tests"
    git --version | grep --color=auto "${pkgs.git.version}"
  '';

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
