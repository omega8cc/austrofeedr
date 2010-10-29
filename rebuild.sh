#!/bin/bash
#
# To use this command you must have `drush make`, `cvs` and `git` installed!
#

if [ ! $1 == "" ]; then
  DIR=$1
else
  DIR='recruiter'
fi


if [ -f recruiter.make ]; then
  echo -e "\nThis command can be used to run recruiter.make in place, or to generate"
  echo -e "a complete recruiter distribution.\n\nWhich would you like?"
  echo "  [1] Rebuild in place (without drupal)."
  echo "  [2] Build a full distribution"
  echo -e "Selection: \c"
  read SELECTION

  if [ $SELECTION = "1" ]; then

    # Run recruiter.make only.
    echo "Building install profile..."
    drush make --yes --working-copy --no-core --contrib-destination=. recruiter.make

  elif [ $SELECTION = "2" ]; then

    # Generate a complete tar.gz of Drupal + Recruiter
    echo "Building Recruiter distribution..."

    drush make --prepare-install --working-copy --yes build.make $DIR && echo "Done. Distribution can be found in the director $DIR."
  else
   echo "Invalid selection."
  fi
else
  echo 'Could not locate file "recruiter.make"'
fi
