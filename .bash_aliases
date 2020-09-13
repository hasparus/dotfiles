alias ls='ls -aG'
alias grep='grep --color=auto'
alias diff='colordiff'
alias bashconfig='vim ~/.bashrc'
alias cat='ccat'
alias tarbz2pack='tar cjvf'

# alias msngr='fb-messenger-cli'
# alias play='afplay'
# alias sml='rlwrap sml'
# alias yolo='/Applications/Chromium.app/Contents/MacOS/Chromium --ignore-certificate-errors &> /dev/null &'

function commit-in-past {
  GIT_AUTHOR_DATE=$1 GIT_COMMITTER_DATE=$1 git commit ${@:2}
}

alias pip=pip3
alias open=xdg-open

function kill-on-port {
  sudo kill -9 $(sudo lsof -t -i:$1)
}

function cd_up() {
  case $1 in
    *[!0-9]*)                                      # if no a number
      cd $( pwd | sed -r "s|(.*/$1[^/]*/).*|\1|" ) # search dir_name in current path, if found - cd to it
      ;;                                           # if not found - not cd
    *)
      cd $(printf "%0.0s../" $(seq 1 $1));         # cd ../../../../  (N dirs)
    ;;
  esac
}
alias 'cd..'='cd_up'
