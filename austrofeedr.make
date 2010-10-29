; austrofeedr profile make file
core = 7.x
api = 2


; For now use the latest dev version of some modules via Git.

; Infrastructure

projects[views][type] = module
projects[views][download][type] = git
projects[views][download][url] = git://git.drupalcode.org/project/views.git
projects[views][download][branch] = 7.x-3.x

projects[ctools][type] = module
projects[ctools][download][type] = git
projects[ctools][download][url] = git://git.drupalcode.org/project/ctools.git
projects[ctools][download][branch] = 7.x-1.x

projects[entity][type] = module
projects[entity][download][type] = git
projects[entity][download][url] = git://git.drupalcode.org/project/entity.git
projects[entity][download][branch] = 7.x-1.x

projects[rules][type] = module
projects[rules][download][type] = git
projects[rules][download][url] = git://git.drupalcode.org/project/rules.git
projects[rules][download][branch] = 7.x-2.x

projects[features][type] = module
projects[features][download][type] = git
projects[features][download][url] = git://git.drupalcode.org/project/features.git
projects[features][download][branch] = 7.x-1.x

; Aggregation

projects[feeds][type] = module
projects[feeds][download][type] = git
projects[feeds][download][url] = git://git.drupalcode.org/project/feeds.git
projects[feeds][download][branch] = 7.x-2.x

projects[job_scheduler][type] = module
projects[job_scheduler][download][type] = git
projects[job_scheduler][download][url] = git://git.drupalcode.org/project/job_scheduler.git
projects[job_scheduler][download][branch] = 7.x-2.x

; Data

projects[date][type] = module
projects[date][download][type] = git
projects[date][download][url] = git://git.drupalcode.org/project/date.git

projects[link][type] = module
projects[link][download][type] = git
projects[link][download][url] = git://git.drupalcode.org/project/link.git
projects[link][download][branch] = 7.x-1.x

; Add austrofeedr feature modules.
projects[austrofeedr_features][type] = module
projects[austrofeedr_features][download][type] = git
projects[austrofeedr_features][download][url] = ssh://gitosis@git.epiqo.com:50022/austrofeedr_features.git
