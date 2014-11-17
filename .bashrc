# .bashrc

txtblk='\033[0;30m' # Black - Regular
txtred='\033[0;31m' # Red
txtgrn='\033[0;32m' # Green
txtylw='\033[0;33m' # Yellow
txtblu='\033[0;34m' # Blue
txtpur='\033[0;35m' # Purple
txtcyn='\033[0;36m' # Cyan
txtwht='\033[0;37m' # White
bldblk='\033[1;30m' # Black - Bold
bldred='\033[1;31m' # Red
bldgrn='\033[1;32m' # Green
bldylw='\033[1;33m' # Yellow
bldblu='\033[1;34m' # Blue
bldpur='\033[1;35m' # Purple
bldcyn='\033[1;36m' # Cyan
bldwht='\033[1;37m' # White
unkblk='\033[4;30m' # Black - Underline
undred='\033[4;31m' # Red
undgrn='\033[4;32m' # Green
undylw='\033[4;33m' # Yellow
undblu='\033[4;34m' # Blue
undpur='\033[4;35m' # Purple
undcyn='\033[4;36m' # Cyan
undwht='\033[4;37m' # White
bakblk='\033[40m'   # Black - Background
bakred='\033[41m'   # Red
bakgrn='\033[42m'   # Green
bakylw='\033[43m'   # Yellow
bakblu='\033[44m'   # Blue
bakpur='\033[45m'   # Purple
bakcyn='\033[46m'   # Cyan
bakwht='\033[47m'   # White
txtrst='\033[0m'    # Text Reset

ps1_txtblk='\[\033[0;30m\]' # Black - Regular
ps1_txtred='\[\033[0;31m\]' # Red
ps1_txtgrn='\[\033[0;32m\]' # Green
ps1_txtylw='\[\033[0;33m\]' # Yellow
ps1_txtblu='\[\033[0;34m\]' # Blue
ps1_txtpur='\[\033[0;35m\]' # Purple
ps1_txtcyn='\[\033[0;36m\]' # Cyan
ps1_txtwht='\[\033[0;37m\]' # White
ps1_bldblk='\[\033[1;30m\]' # Black - Bold
ps1_bldred='\[\033[1;31m\]' # Red
ps1_bldgrn='\[\033[1;32m\]' # Green
ps1_bldylw='\[\033[1;33m\]' # Yellow
ps1_bldblu='\[\033[1;34m\]' # Blue
ps1_bldpur='\[\033[1;35m\]' # Purple
ps1_bldcyn='\[\033[1;36m\]' # Cyan
ps1_bldwht='\[\033[1;37m\]' # White
ps1_unkblk='\[\033[4;30m\]' # Black - Underline
ps1_undred='\[\033[4;31m\]' # Red
ps1_undgrn='\[\033[4;32m\]' # Green
ps1_undylw='\[\033[4;33m\]' # Yellow
ps1_undblu='\[\033[4;34m\]' # Blue
ps1_undpur='\[\033[4;35m\]' # Purple
ps1_undcyn='\[\033[4;36m\]' # Cyan
ps1_undwht='\[\033[4;37m\]' # White
ps1_bakblk='\[\033[40m\]'   # Black - Background
ps1_bakred='\[\033[41m\]'   # Red
ps1_bakgrn='\[\033[42m\]'   # Green
ps1_bakylw='\[\033[43m\]'   # Yellow
ps1_bakblu='\[\033[44m\]'   # Blue
ps1_bakpur='\[\033[45m\]'   # Purple
ps1_bakcyn='\[\033[46m\]'   # Cyan
ps1_bakwht='\[\033[47m\]'   # White
ps1_txtrst='\[\033[0m\]'    # Text Reset

smiley () {
  case $? in
    0) echo -e "$txtgrn"':)'"$txtrst" ;;
    1) echo -e "$txtred"':('"$txtrst" ;;
    *) echo -e "$txtred"':P'"$txtrst" ;;
  esac
}

if [ "$PS1" ]; then
  PS1="$ps1_txtrst\\n"
  PS1="$PS1$ps1_txtgrn\u@\h$ps1_txtrst"
  #PS1="$PS1"" $(uname)"
  PS1="$PS1"' $(smiley)'
  PS1="$PS1$ps1_txtblu"' \D{%F}'
  PS1="$PS1"' \T'
  #PS1="$PS1"' \D{%Z}'
  PS1="$PS1$ps1_txtrst"
  PS1="$PS1"' '"$ps1_txtylw"'\w'
  PS1="$PS1$ps1_txtrst"
  PS1="$PS1"'\n\$ '

  # /usr/local/opt/bash-git-prompt
  #if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  #  GIT_PROMPT_THEME=Default
  #  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
  #fi

  # note: do not export PS1; it is just for this shell, not child shells
fi


alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# vim: et:sts=2:sw=2:ts=8:tw=79
