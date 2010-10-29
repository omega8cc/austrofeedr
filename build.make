; This is the make file used by rebuild.sh to build the whole distribution.
; You may directly use this make file using drush make, or just use rebuild.sh with option 2.

api=2
core=7.x

; Use drupal.org drupal via git HEAD
projects[drupal][type] = core 
projects[drupal][download][type] = git 
projects[drupal][download][url] = ssh://gitosis@git.epiqo.com:50022/drupal.git

; Use internal recruiter repository
; Recursion will build the recruiter.make file found there for us.
projects[recruiter][type] = profile
projects[recruiter][download][type] = git
projects[recruiter][download][url] = ssh://gitosis@git.epiqo.com:50022/recruiter.git
