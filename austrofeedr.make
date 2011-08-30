; austrofeedr profile make file
core = 7.x
api = 2

; core patch
; http://drupal.org/node/1158114#comment-4863562
; registry rebuild
; http://drupal.org/project/registry_rebuild

; For now use the latest dev version of some modules via Git.

; Infrastructure

projects[entity][type] = module
projects[entity][download][type] = git
projects[entity][download][url] = git://git.drupalcode.org/project/entity.git
projects[entity][download][branch] = 7.x-1.x
;projects[entity][download][tag] = 7.x-1.0-beta8 
;projects[entity][download][revision] = e42cbe70266f87b84ab2c30b4e7a4fcc38bea087

projects[features][type] = module
projects[features][download][type] = git
projects[features][download][url] = git://git.drupalcode.org/project/features.git
projects[features][download][branch] = 7.x-1.x
;projects[features][download][tag] = 7.x-1.0-beta2
;projects[features][download][revision] = acac0a5c127211a7c1b8c6019abbdeeefb4f1f1f

; Data modules.

projects[datastore][type] = module
projects[datastore][download][type] = git
; @todo wait for official datastore releaese http://drupal.org/project/datastore
projects[datastore][download][url] = ssh://gitosis@git.epiqo.com:50022/datastore.git
;projects[datastore][download][revision] = a222433cdce62eb3c3290620b45007456f507c6c

projects[date][type] = module
projects[date][download][type] = git
projects[date][download][url] = git://git.drupalcode.org/project/date.git
projects[date][download][branch] = 7.x-2.x
;projects[date][download][tag] = 7.x-2.0-alpha3
;projects[date][download][revision] = 63cc13d74400056ffe60a0aa54ec3d470c0422bf

projects[link][type] = module
projects[link][download][type] = git
projects[link][download][url] = git://git.drupalcode.org/project/link.git
projects[link][download][branch] = 7.x-1.x
;projects[link][download][tag] = 7.x-1.0-alpha3
;projects[link][download][revision] = 32b432867a9126cd17dfacefb8d2eb451b49f291
; Link support hook_entity_property_info() http://drupal.org/node/1079782
projects[link][patch][] = "http://drupal.org/files/issues/1079782-link-entity_property-7.patch"

projects[references][type] = module
projects[references][download][type] = git
projects[references][download][url] = git://git.drupalcode.org/project/references.git
projects[references][download][branch] = 7.x-2.x

projects[taxonomy_csv][type] = module
projects[taxonomy_csv][download][type] = git
projects[taxonomy_csv][download][url] = git://git.drupalcode.org/project/taxonomy_csv.git
projects[taxonomy_csv][download][branch] = master
;projects[taxonomy_csv][download][tag] = 7.x-5.6
;projects[taxonomy_csv][download][revision] = 437e6cb24d7d6d58c9d8411663cee24742a9ac83

projects[taxonomy_manager][type] = module
projects[taxonomy_manager][download][type] = git
projects[taxonomy_manager][download][url] = git://git.drupalcode.org/project/taxonomy_manager.git
projects[taxonomy_manager][download][branch] = 7.x-1.x
;projects[taxonomy_manager][download][tag] = 7.x-1.0-beta1
;projects[taxonomy_manager][download][revision] = 53b1e0f943d2cd1542e1bcfeeb6d870827379fb6

; Subscription modules.

projects[feeds][type] = module
projects[feeds][download][type] = git
projects[feeds][download][url] = git://git.drupalcode.org/project/feeds.git
projects[feeds][download][branch] = 7.x-2.x
;projects[feeds][download][tag] = 7.x-2.0-rc1
;projects[feeds][download][revision] = def536880bc0123e914aae271aea3b5fa56ea955
; Feeds add a generic entity processor http://drupal.org/node/1033202#comment-3975772
projects[feeds][patch][] = "http://drupal.org/files/issues/feeds_entity_processor_1.patch"
; Feeds enable modules to customize imports http://drupal.org/node/1005128#comment-3970616
projects[feeds][patch][] = "http://drupal.org/files/issues/feeds_rules_11.patch"

projects[job_scheduler][type] = module
projects[job_scheduler][download][type] = git
projects[job_scheduler][download][url] = git://git.drupalcode.org/project/job_scheduler.git
projects[job_scheduler][download][branch] = 7.x-2.x
;projects[job_scheduler][download][tag] = 7.x-2.0-alpha2
;projects[job_scheduler][download][revision] = 5dbe40f38feeea5b279bdcb9268765184ead1eb6

projects[http_client][type] = module
projects[http_client][download][type] = git
projects[http_client][download][url] = git://git.drupalcode.org/project/http_client.git
projects[http_client][download][branch] = 7.x-2.x
;projects[http_client][download][tag] = 
;projects[http_client][download][revision] = 6e65667997ffe79172249b42a897cd81dd4ab510

projects[wsclient][type] = module
projects[wsclient][download][type] = git
projects[wsclient][download][url] = git://git.drupalcode.org/project/wsclient.git
projects[wsclient][download][branch] = 7.x-1.x
;projects[wsclient][download][tag] = 7.x-1.0-alpha3
;projects[wsclient][download][revision] = 83aa0585e2959176a059625271bad051d1ffd54d


; Processing modules.

projects[rules][type] = module
projects[rules][download][type] = git
projects[rules][download][url] = git://git.drupalcode.org/project/rules.git
projects[rules][download][branch] = 7.x-2.x
;projects[rules][download][tag] = 7.x-2.0-beta1
;projects[rules][download][revision] = 26cff801cb39ba7e3f4a3583f87c7d14ffa343b5

projects[rules_autotag][type] = module
projects[rules_autotag][download][type] = git
projects[rules_autotag][download][url] = git://git.drupalcode.org/project/rules_autotag.git
projects[rules_autotag][download][branch] = 7.x-1.x
;projects[rules_autotag][download][tag] = 
;projects[rules_autotag][download][revision] = 57d4c3300adee09909ab1e708c5b5a962e262fcd

; Publishing modules.

projects[views][type] = module
projects[views][download][type] = git
projects[views][download][url] = git://git.drupalcode.org/project/views.git
projects[views][download][branch] = 7.x-3.x
;projects[views][download][tag] = 7.x-3.0-beta3
;projects[views][download][revision] = 21216dd16b295a27b405aa6a3ed5a0e6b23de848

projects[views_data_export][type] = module
projects[views_data_export][download][type] = git
projects[views_data_export][download][url] = git://git.drupalcode.org/project/views_data_export.git
projects[views_data_export][download][branch] = 7.x-3.x
;projects[views_data_export][download][tag] = 7.x-3.0-beta4
;projects[views_data_export][download][revision] = 60d1fabd428ac1bd14040cdf865b60989d487a0b

projects[message][type] = module
projects[message][download][type] = git
projects[message][download][url] = git://git.drupalcode.org/project/message.git
projects[message][download][branch] = 7.x-1.x

projects[ctools][type] = module
projects[ctools][download][type] = git
projects[ctools][download][url] = git://git.drupalcode.org/project/ctools.git
projects[ctools][download][branch] = 7.x-1.x
;projects[ctools][download][tag] = 7.x-1.0-alpha4
;projects[ctools][download][revision] = 52f25c57025b5ecddb10774835be3d1729c2f762

projects[openlayers][type] = module
projects[openlayers][download][type] = git
projects[openlayers][download][url] = git://git.drupalcode.org/project/openlayers.git
projects[openlayers][download][branch] = 7.x-2.x
;projects[openlayers][download][tag] = 7.x-2.0-alpha1
;projects[openlayers][download][revision] = a0b2935c3ac161708ded74062ef45b4f319455dd

projects[geofield][type] = module
projects[geofield][download][type] = git
projects[geofield][download][url] = git://github.com/dasjo/geofield.git
projects[geofield][download][url] = git://github.com/developmentseed/geofield.git
;projects[geofield][download][revision] = 00f4eb834493c0ef58f3dcaeb33ab8e41fab69e5

;projects[mapbox][type] = module
;projects[mapbox][download][type] = git
;projects[mapbox][download][url] = git://git.drupalcode.org/project/mapbox.git
;projects[mapbox][download][branch] = 7.x-2.x

projects[pusher][type] = module
projects[pusher][download][type] = git
;projects[pusher][download][url] = git://github.com/dasjo/pusher.git
projects[pusher][download][url] = http://git.drupal.org/sandbox/dasjo/1167118.git
projects[pusher][download][branch] = DRUPAL-7--1  

projects[push_hub][type] = module
projects[push_hub][download][type] = git
;projects[push_hub][download][url] = git://github.com/dasjo/push_hub.git
projects[push_hub][download][url] = http://git.drupal.org/sandbox/dasjo/1167132.git 
projects[push_hub][download][branch] = DRUPAL-7--1

projects[panels][download][type] = git
projects[panels][download][url] = git://git.drupalcode.org/project/openlayers.git
projects[panels][download][branch] = 7.x-3.x
;projects[panels][download][tag] = 7.x-3.0-alpha3

; User modules

projects[views_bulk_operations][type] = module
projects[views_bulk_operations][download][type] = git
projects[views_bulk_operations][download][url] = git://git.drupalcode.org/project/views_bulk_operations.git
projects[views_bulk_operations][download][branch] = 7.x-3.x

; Devel modules.

projects[devel][type] = module
projects[devel][download][type] = git
projects[devel][download][url] = git://git.drupalcode.org/project/devel.git

projects[admin_menu][type] = module
projects[admin_menu][download][type] = git
projects[admin_menu][download][url] = git://git.drupalcode.org/project/admin_menu.git
;projects[admin_menu][download][branch] = 7.x-3.x

projects[diff][type] = module
projects[diff][download][type] = git
projects[diff][download][url] = git://git.drupalcode.org/project/diff.git
projects[diff][download][branch] = 7.x-2.x

projects[advanced_help][type] = module
projects[advanced_help][download][type] = git
projects[advanced_help][download][url] = git://git.drupalcode.org/project/advanced_help.git
projects[advanced_help][download][branch] = 7.x-1.x

; Add austrofeedr feature modules.

projects[austrofeedr_features][type] = module
projects[austrofeedr_features][download][type] = git
projects[austrofeedr_features][download][url] = ssh://gitosis@git.epiqo.com:50022/austrofeedr_features.git
 