# .profile

export CLICOLOR=1
export EDITOR=vim
export GOPATH="$HOME"/.go
export LC_ALL=C
export LESS=-FIRX
export MAVEN_HOME=/usr/local/opt/maven/libexec

if [ -f ~/.brew_gh_api_token ]; then
  export HOMEBREW_GITHUB_API_TOKEN=`cat ~/.brew_gh_api_token`
fi

PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
PATH="$GOPATH"/bin:"$PATH"

if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

export PATH

# vim: et:sts=2:sw=2:ts=8:tw=79
