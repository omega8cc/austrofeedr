; This is the make file used by rebuild.sh to build the whole distribution.
; You may directly use this make file using drush make, or just use rebuild.sh with option 2.

api=2
core=7.x

; Use drupal.org drupal via git HEAD
projects[drupal][type] = core 
projects[drupal][download][type] = git 
projects[drupal][download][url] = http://git.drupal.org/project/drupal.git
projects[drupal][download][branch] = 7.x

; Use internal austrofeedr repository
; Recursion will build the austrofeedr.make file found there for us.
projects[austrofeedr][type] = profile
projects[austrofeedr][download][type] = git
projects[austrofeedr][download][url] = http://git.drupal.org/sandbox/dasjo/1301206.git
