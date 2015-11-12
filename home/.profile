# .profile

export CLICOLOR=1
export EDITOR=vim
export HOMEBREW_GITHUB_API_TOKEN=ce009fdc9abfaa38ef9257ab05b77d0c6c9d0985
export LC_ALL=C
export LESS=-FIRX
export MAVEN_HOME=/usr/local/opt/maven/libexec

MANPATH=`man -w`
MANPATH="$MANPATH":/usr/local/opt/erlang/lib/erlang/man
export MANPATH

if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

# vim: et:sts=2:sw=2:ts=8:tw=79
