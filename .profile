# .profile

export CLICOLOR=1
export EDITOR=vim
export LC_ALL=C
export MAVEN_HOME=/usr/local/opt/maven/libexec

if [ -d "$HOME/bin" ]; then
  export PATH="$HOME/bin:$PATH"
fi

# vim: et:sts=2:sw=2:ts=8:tw=79
