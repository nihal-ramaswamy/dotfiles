export PIP_REQUIRE_VIRTUALENV=true
gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

export EDITOR='vim'
setopt HIST_IGNORE_SPACE
