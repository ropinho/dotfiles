source "$HOME/.cargo/env"

#------------------------------------------------------------------------------
# custom functions

function showunixcolors() {
  for COLOR in {1..255}
  do
    echo -en "\e[38;5;${COLOR}m${COLOR} "
  done
  echo
}

function getkblayout() {
  setxkbmap -print | grep xkb_symbols | awk -F'+' '{ print $2 }'
}

function swapkblayout() {
  local layout=$(getkblayout)
  if [[ $layout == "us" ]]; then
    setxkbmap br
  else
    setxkbmap us
  fi
}
#------------------------------------------------------------------------------
