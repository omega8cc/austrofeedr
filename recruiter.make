; recruiter profile make file
core = 7.x
api = 2


; For now use the latest dev version of some modules via Git.

projects[views][type] = module
projects[views][download][type] = git
projects[views][download][url] = git://git.drupalcode.org/project/views.git
projects[views][download][branch] = 7.x-3.x

; Use the latest ctools release.
projects[ctools][type] = module

projects[entity][type] = module
projects[entity][download][type] = git
projects[entity][download][url] = git://git.drupalcode.org/project/entity.git
projects[entity][download][branch] = 7.x-1.x

projects[rules][type] = module
projects[rules][download][type] = git
projects[rules][download][url] = git://git.drupalcode.org/project/rules.git
projects[rules][download][branch] = 7.x-2.x

projects[profile2][type] = module
projects[profile2][download][type] = git
projects[profile2][download][url] = git://git.drupalcode.org/project/profile2.git
projects[profile2][download][branch] = 7.x-1.x

projects[features][type] = module
projects[features][download][type] = git
projects[features][download][url] = git://git.drupalcode.org/project/features.git
projects[features][download][branch] = 7.x-1.x


projects[addressfield][type] = module
projects[addressfield][download][type] = git
projects[addressfield][download][url] = git://git.drupalcode.org/project/addressfield.git

projects[email][type] = module
projects[email][download][type] = git
projects[email][download][url] = git://git.drupalcode.org/project/email.git
projects[email][download][branch] = 7.x-1.x

projects[field_collection][type] = module
projects[field_collection][download][type] = git
projects[field_collection][download][url] = git://git.drupalcode.org/project/field_collection.git
projects[field_collection][download][branch] = 7.x-1.x

projects[search_api][type] = module
projects[search_api][download][type] = git
projects[search_api][download][url] = git://git.drupalcode.org/project/search_api.git
projects[search_api][download][branch] = 7.x-1.x

projects[term_level][type] = module
projects[term_level][download][type] = git
projects[term_level][download][url] = git://git.drupalcode.org/project/term_level.git
projects[term_level][download][branch] = 7.x-1.x

projects[date][type] = module
projects[date][download][type] = git
projects[date][download][url] = git://git.drupalcode.org/project/date.git

projects[link][type] = module
projects[link][download][type] = git
projects[link][download][url] = git://git.drupalcode.org/project/link.git
projects[link][download][branch] = 7.x-1.x

; Add recruiter feature modules.
projects[recruiter_features][type] = module
projects[recruiter_features][download][type] = git
projects[recruiter_features][download][url] = ssh://gitosis@git.epiqo.com:50022/recruiter_features.git
