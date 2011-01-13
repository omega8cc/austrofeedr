; austrofeedr profile make file
core = 7.x
api = 2

; For now use the latest dev version of some modules via Git.

; Infrastructure

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

projects[diff][type] = module
projects[diff][download][type] = git
projects[diff][download][url] = git://git.drupalcode.org/project/diff.git
projects[diff][download][branch] = 7.x-2.x

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

projects[taxonomy_csv][type] = module
projects[taxonomy_csv][download][type] = git
projects[taxonomy_csv][download][url] = git://git.drupalcode.org/project/taxonomy_csv.git
projects[taxonomy_csv][download][branch] = master

projects[taxonomy_manager][type] = module
projects[taxonomy_manager][download][type] = git
projects[taxonomy_manager][download][url] = git://git.drupalcode.org/project/taxonomy_manager.git
projects[taxonomy_manager][download][branch] = 7.x-1.x

;projects[views_bulk_operations][type] = module
;projects[views_bulk_operations][download][type] = git
;projects[views_bulk_operations][download][url] = git://git.drupalcode.org/project/views_bulk_operations.git
;projects[views_bulk_operations][download][branch] = 7.x-3.x

; Publishing

projects[views][type] = module
projects[views][download][type] = git
projects[views][download][url] = git://git.drupalcode.org/project/views.git
projects[views][download][branch] = 7.x-3.x

projects[ctools][type] = module
projects[ctools][download][type] = git
projects[ctools][download][url] = git://git.drupalcode.org/project/ctools.git
;projects[ctools][download][branch] = 7.x-1.x

projects[openlayers][type] = module
projects[openlayers][download][type] = git
projects[openlayers][download][url] = git://git.drupalcode.org/project/openlayers.git
projects[openlayers][download][branch] = 7.x-2.x

projects[geofield][type] = module
projects[geofield][download][type] = git
projects[geofield][download][url] = git://github.com/dasjo/geofield.git
;projects[geofield][download][url] = git://github.com/developmentseed/geofield.git
;projects[geofield][download][branch] = DRUPAL-7--1

projects[mapbox][type] = module
projects[mapbox][download][type] = git
projects[mapbox][download][url] = git://git.drupalcode.org/project/mapbox.git
projects[mapbox][download][branch] = 7.x-2.x

; Devel

projects[admin_menu][type] = module
projects[admin_menu][download][type] = git
projects[admin_menu][download][url] = git://git.drupalcode.org/project/admin_menu.git
;projects[admin_menu][download][branch] = 7.x-3.x


; Add austrofeedr feature modules.

projects[austrofeedr_features][type] = module
projects[austrofeedr_features][download][type] = git
projects[austrofeedr_features][download][url] = ssh://gitosis@git.epiqo.com:50022/austrofeedr_features.git
