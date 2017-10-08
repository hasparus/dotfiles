#! usr/bin/env zsh

gitara ()
{
  git add -A && git commit -m $1 $2 && git push $2
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

function nn() {
  if [ "$1" = "jupyter" ]; then
    ssh -L 1337:localhost:1337 tryglaw -t \
    ssh -L 1337:localhost:1337 hera -t \
    ssh -L 1337:localhost:1337 lab110-02.stud.ii -t
    return
  fi

  ssh tryglaw -t ssh hera -t ssh lab110-02.stud.ii
}