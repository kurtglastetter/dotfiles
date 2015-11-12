# .profile

export CLICOLOR=1
export EDITOR=vim
export HOMEBREW_GITHUB_API_TOKEN=33f6cfdfb157640831f83d9d68d4d3108d63fd44
export LC_ALL=C
export LESS=-FIRX
export MAVEN_HOME=/usr/local/opt/maven/libexec

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

export PATH

# vim: et:sts=2:sw=2:ts=8:tw=79
