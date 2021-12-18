export PIP_REQUIRE_VIRTUALENV=true
gpip() {
  PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

if [ "$TERM_PROGRAM" = "Terminus-Sublime" ]; then
  bindkey "\e[1;3C" forward-word
  bindkey "\e[1;3D" backward-word
fi

export EDITOR='vim'
setopt HIST_IGNORE_SPACE
