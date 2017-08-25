gitara ()
{
  git add -A && git commit -m $1 $2 && git push $2
}

moov ()
{
  if ["$1" == ">2"]; then
   cp "~/workspace/player/$2" "~/workspace/second_player/$2"
  elif ["$1" == ">1"]; then
    cp "~/workspace/second_player/$2" "~/workspace/player/$2"
  fi
}
