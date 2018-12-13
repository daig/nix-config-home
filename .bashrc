
eval "$(fasd --init auto)"

c() {
  local oldDir="$(pwd)"
  pushd . > /dev/null
  cd "$1"
  ls
  if [ "$oldDir" = "$(pwd)" ] ;
  then popd > /dev/null
  fi
}

unalias z
z() {
  local oldDir="$(pwd)"
  pushd . > /dev/null
  fasd_cd -d "$1"
  ls
  if [ "$oldDir" = "$(pwd)" ] ;
  then popd > /dev/null
  fi
}

b() { popd > /dev/null && ls;}
v() { vim $(fasd -f $@); }
