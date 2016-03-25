_wrap_cmd_str_arg () {
  local arg="$1"
  if [[ "$arg" =~ "'" ]]; then
    # contains single quotes; surround in double-quotes, quoting any existing
    # double-quotes or backslashes
    arg="\"$(<<<"$arg" sed 's/\(["\\]\)/\\\1/g')\""
  elif [[ "$arg" =~ [^+\-./0-9:=@A-Z^_a-z] ]]; then
    # contains other characters that need quoting; surround in single quotes
    arg="'$arg'"
  fi

  # ensure arg is not interpreted as flag to echo
  [[ "$arg" =~ ^(-*)(.*) ]]
  echo -n "${BASH_REMATCH[1]}"
  echo -n "${BASH_REMATCH[2]}"
}

_wrap_cmd_str () {
  _wrap_cmd_str_arg "$1"
  shift
  for a in "$@"; do
    echo -n ' '
    _wrap_cmd_str_arg "$a"
  done
  echo ''
}

_wrap () {
  local wrap_cmd_str=$(_wrap_cmd_str "$@")
  echo >&2 "    [$wrap_cmd_str]"
  "$@"
  local errno=$?
  if [ $errno -ne 0 ]; then
    echo >&2 "*** [$wrap_cmd_str] Error $errno"
  fi
  return $errno
}

wrap () {
  _wrap "$@"
}
