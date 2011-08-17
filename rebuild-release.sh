#!/bin/bash
#
# To use this command you must have `drush make`, `cvs` and `git` installed!
#

if [ ! $1 == "" ]; then
  DIR=$1
else
  DIR='austrofeedr'
fi


if [ -f austrofeedr.make ]; then
  echo -e "\nThis command can be used to run austrofeedr.make in place, or to generate"
  echo -e "a complete austrofeedr distribution.\n\nWhich would you like?"
  echo "  [1] Rebuild in place (without drupal)."
  echo "  [2] Build a full distribution"
  echo "  [3] git pull all modules & core + run drush updatedb"
  echo "  [4] git status all modules & core"
  echo -e "Selection: \c"
  read SELECTION

  if [ $SELECTION = "1" ]; then

    # Run austrofeedr.make only.
    echo "Building install profile..."
    drush make --yes --working-copy --no-core --contrib-destination=. austrofeedr-release.make

  elif [ $SELECTION = "2" ]; then

    # Generate a complete tar.gz of Drupal + Austrofeedr
    echo "Building austrofeedr distribution..."

    drush make --prepare-install --working-copy --yes build.make $DIR && echo "Done. Distribution can be found in the director $DIR."
  elif [ $SELECTION = "3" ]; then
    
    echo "Updating modules"
    for dir in modules/*
    do
      (cd $dir && echo $(pwd) && git pull) #update modules
    done
    echo "Updating core"
    (cd ../../ && echo $(pwd) && git pull && drush updatedb)  #update core + run db updates


  elif [ $SELECTION = "4" ]; then
    
    echo "Status modules"
    for dir in modules/*
    do
      (cd $dir && echo $(pwd) && git status) #status modules
    done
    echo "Status core"
    (cd ../../ && echo $(pwd) && git status)  #status core

  else
   echo "Invalid selection."
  fi
else
  echo 'Could not locate file "austrofeedr.make"'
fi
