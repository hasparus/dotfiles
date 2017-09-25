gitara ()
{
  git add -A && git commit -m $1 $2 && git push $2
}

moov_firstDir="~/workspace/player"
moov_secondDir="~/workspace"

moov ()
{
  if [ "$1" == ":2" ]; then
    cp -R "$moov_firstDir/$2" "$moov_secondDir"
  elif [ "$1" == ":1" ]; then
    cp "$moov_secondDir/$2" "$moov_firstDir"
  fi
}
