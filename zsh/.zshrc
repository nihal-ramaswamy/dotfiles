export PIP_REQUIRE_VIRTUALENV=true
gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

export EDITOR='nvim'
setopt HIST_IGNORE_SPACE
