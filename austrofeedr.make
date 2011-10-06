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
projects[entity][download][revision] = 3165b2f53eaf86c45d65d533c3e558aeb25b2ca1
; Support taxonomy_get_parents_all http://drupal.org/node/1283840
projects[entity][patch][] = "http://drupal.org/files/issues/entity_taxonomy_parents_all.patch"
; Entity tokens not created for multi-value fields http://drupal.org/node/1058856
projects[entity][patch][] = "http://drupal.org/files/issues/entity_list_tokens_2.patch"

projects[features][type] = module
projects[features][download][type] = git
projects[features][download][url] = git://git.drupalcode.org/project/features.git
projects[features][download][branch] = 7.x-1.x
projects[features][download][revision] = 728049df3a25c8fe943ed41ae6823c7b8fe72834

projects[field_group][type] = module
projects[field_group][download][type] = git
projects[field_group][download][url] = git://git.drupalcode.org/project/field_group.git
projects[field_group][download][branch] = 7.x-1.x
projects[field_group][download][revision] = 1ca8eddb8c61a65e99538ea44b646318e5237ea5

; Data modules.

projects[synonyms][type] = module
projects[synonyms][download][type] = git
projects[synonyms][download][url] = git://git.drupalcode.org/project/synonyms.git
projects[synonyms][download][branch] = 7.x-1.x
projects[synonyms][download][revision] = 949472be5d105f12d89350271e07e2c56e1a92f8

projects[datastore][type] = module
projects[datastore][download][type] = git
; @todo wait for official datastore releaese http://drupal.org/project/datastore
projects[datastore][download][url] = ssh://gitosis@git.epiqo.com:50022/datastore.git
projects[datastore][download][revision] = a222433cdce62eb3c3290620b45007456f507c6c

projects[date][type] = module
projects[date][download][type] = git
projects[date][download][url] = git://git.drupalcode.org/project/date.git
projects[date][download][branch] = 7.x-2.x
projects[date][download][revision] = 7d545b1ab1bd23387502445d034bc5a587e8cc4a

projects[link][type] = module
projects[link][download][type] = git
projects[link][download][url] = git://git.drupalcode.org/project/link.git
projects[link][download][branch] = 7.x-1.x
projects[link][download][revision] = 985958f186c1b386622f94a0da57ef8c7220fb0a

projects[references][type] = module
projects[references][download][type] = git
projects[references][download][url] = git://git.drupalcode.org/project/references.git
projects[references][download][branch] = 7.x-2.x
projects[references][download][revision] = 80e59efe2a0a56ed8b711150f13603170b3571a4

projects[taxonomy_csv][type] = module
projects[taxonomy_csv][download][type] = git
projects[taxonomy_csv][download][url] = git://git.drupalcode.org/project/taxonomy_csv.git
projects[taxonomy_csv][download][branch] = master
projects[taxonomy_csv][download][revision] = d2d582428e0dc49f8ebf6c0e0508751fda86c9ef

projects[taxonomy_manager][type] = module
projects[taxonomy_manager][download][type] = git
projects[taxonomy_manager][download][url] = git://git.drupalcode.org/project/taxonomy_manager.git
projects[taxonomy_manager][download][branch] = 7.x-1.x
projects[taxonomy_manager][download][revision] = 270dbde481a857a492b2d9458b884cd2004bf0cb

; Subscription modules.

projects[feeds][type] = module
projects[feeds][download][type] = git
projects[feeds][download][url] = git://git.drupalcode.org/project/feeds.git
projects[feeds][download][branch] = 7.x-2.x
projects[feeds][download][revision] = 70b618e60d6de0e415a4a995adae6d0f57a6d92b
; Feeds add a generic entity processor http://drupal.org/node/1033202#comment-3975772
; projects[feeds][patch][] = "http://drupal.org/files/issues/feeds_entity_processor_1.patch"
; Feeds enable modules to customize imports http://drupal.org/node/1005128#comment-3970616
projects[feeds][patch][] = "http://drupal.org/files/issues/feeds_rules_integration_0.patch"
; Don't subscribe on push notifications http://drupal.org/node/1291942
projects[feeds][patch][] = "http://drupal.org/files/issues/push_hub_bug_d7_2.patch"

projects[job_scheduler][type] = module
projects[job_scheduler][download][type] = git
projects[job_scheduler][download][url] = git://git.drupalcode.org/project/job_scheduler.git
projects[job_scheduler][download][branch] = 7.x-2.x
projects[job_scheduler][download][revision] = 6e1a9400763d7f02515fa30a5094e0d3f051793d

projects[http_client][type] = module
projects[http_client][download][type] = git
projects[http_client][download][url] = git://git.drupalcode.org/project/http_client.git
projects[http_client][download][branch] = 7.x-2.x
projects[http_client][download][revision] = 7e4f07b6919969a7516623e8241c007a9724489d

projects[wsclient][type] = module
projects[wsclient][download][type] = git
projects[wsclient][download][url] = git://git.drupalcode.org/project/wsclient.git
projects[wsclient][download][branch] = 7.x-1.x
projects[wsclient][download][revision] = 918188dec72c58833491df0549726d2002ef89a3


; Processing modules.

projects[rules][type] = module
projects[rules][download][type] = git
projects[rules][download][url] = git://git.drupalcode.org/project/rules.git
projects[rules][download][branch] = 7.x-2.x
projects[rules][download][revision] = 607c60df6ae69ebb79e51a0f657227b72ef664e1

projects[rules_autotag][type] = module
projects[rules_autotag][download][type] = git
projects[rules_autotag][download][url] = git://git.drupalcode.org/project/rules_autotag.git
projects[rules_autotag][download][branch] = 7.x-1.x
projects[rules_autotag][download][revision] = 657a6ebb431a242c6de50df661b7c2bca29f2e2b

projects[rules_link][type] = module
projects[rules_link][download][type] = git
projects[rules_link][download][url] = git://git.drupalcode.org/project/rules_link.git
projects[rules_link][download][branch] = 7.x-1.x
projects[rules_link][download][revision] = eb7b16b4f945c08f690120f1d10b35a4ab9ece5e

; Publishing modules.

projects[views][type] = module
projects[views][download][type] = git
projects[views][download][url] = git://git.drupalcode.org/project/views.git
projects[views][download][branch] = 7.x-3.x
projects[views][download][revision] = 22e01905e1d7d0943985fd80e7e8f0f419b7472a

projects[views_data_export][type] = module
projects[views_data_export][download][type] = git
projects[views_data_export][download][url] = git://git.drupalcode.org/project/views_data_export.git
projects[views_data_export][download][branch] = 7.x-3.x
projects[views_data_export][download][revision] = fcde3125e8df9acf5c359b4c874665e1ceba877f

projects[ctools][type] = module
projects[ctools][download][type] = git
projects[ctools][download][url] = git://git.drupalcode.org/project/ctools.git
projects[ctools][download][branch] = 7.x-1.x
projects[ctools][download][revision] = 3ccf9c7c547ba48517841ececbdff4ac7ba9054b

projects[openlayers][type] = module
projects[openlayers][download][type] = git
projects[openlayers][download][url] = git://git.drupalcode.org/project/openlayers.git
projects[openlayers][download][branch] = 7.x-2.x
projects[openlayers][download][revision] = 2269b1ca318b1e3e35c33c06772e5ee1523adb39

projects[geofield][type] = module
projects[geofield][download][type] = git
projects[geofield][download][url] = http://git.drupal.org/project/geofield.git
projects[geofield][download][branch] = 7.x-1.x
projects[geofield][download][revision] = 136a201d5aab48d92f979df8e2a1581af0921d8a

projects[libraries][type] = module
projects[libraries][download][type] = git
projects[libraries][download][url] = http://git.drupal.org/project/libraries.git
projects[libraries][download][branch] = 7.x-2.x
projects[libraries][download][revision] = 3c4e6f9c01333b1952f66b2320015f55af86aecc

;libraries[openlayers_themes][type] = theme
libraries[openlayers_themes][destination] = "themes"
libraries[openlayers_themes][download][type] = git
; Add cloud-popup-relative.png to Dark theme http://drupal.org/node/928268 
libraries[openlayers_themes][download][url] = https://github.com/pigletto/openlayers_themes.git

projects[pusher][type] = module
projects[pusher][download][type] = git
projects[pusher][download][url] = http://git.drupal.org/sandbox/dasjo/1167118.git
projects[pusher][download][branch] = DRUPAL-7--1  
projects[pusher][download][revision] = f0240fe69c7cd2d537484610e07292bf0a4309fd

projects[push_hub][type] = module
projects[push_hub][download][type] = git
projects[push_hub][download][url] = http://git.drupal.org/sandbox/dasjo/1167132.git 
projects[push_hub][download][branch] = DRUPAL-7--1
projects[push_hub][download][revision] = 790ffde3776924c11b07d63070286e4d3ca656e7

projects[panels][download][type] = git
projects[panels][download][url] = git://git.drupalcode.org/project/panels.git
projects[panels][download][branch] = 7.x-3.x
projects[panels][download][revision] = 7895ac965dead5519f3780c454aece54f652c63b
; Undefined index: page in panels_simple_cache_get_id http://drupal.org/node/1212670
projects[panels][patch][] = "http://drupal.org/files/issues/panels-simple-cache-1212670-2_0.patch"

; User modules

projects[views_bulk_operations][type] = module
projects[views_bulk_operations][download][type] = git
projects[views_bulk_operations][download][url] = git://git.drupalcode.org/project/views_bulk_operations.git
projects[views_bulk_operations][download][branch] = 7.x-3.x
projects[views_bulk_operations][download][revision] = 7e71346dcafe99b35b0659e0b096d69e40fb4861

; Devel modules.

projects[devel][type] = module
projects[devel][download][type] = git
projects[devel][download][url] = git://git.drupalcode.org/project/devel.git
projects[devel][download][branch] = 7.x-1.x

projects[admin_menu][type] = module
projects[admin_menu][download][type] = git
projects[admin_menu][download][url] = git://git.drupalcode.org/project/admin_menu.git
projects[admin_menu][download][branch] = 7.x-3.x

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
 