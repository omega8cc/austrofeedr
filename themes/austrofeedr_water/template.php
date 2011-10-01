<?php

/**
 * @file
 * This file is empty by default because the base theme chain (Alpha & Omega) provides
 * all the basic functionality. However, in case you wish to customize the output that Drupal
 * generates through Alpha & Omega this file is a good place to do so.
 * 
 * Alpha comes with a neat solution for keeping this file as clean as possible while the code
 * for your subtheme grows. Please read the README.txt in the /preprocess and /process subfolders
 * for more information on this topic.
 */
 
function austrofeedr_water_preprocess_views_view($variables) {
  if($variables['name'] == 'hw_messstellen_map' || $variables['name'] == 'hw_messstellen_map_single') {
    drupal_add_js(drupal_get_path('theme', 'austrofeedr_water') .
      '/js/austrofeedr_openlayers.js', 'file');
  }
}

function austrofeedr_water_preprocess_node(&$vars) {
  if (!empty($vars['node']->referencing_field)) {
    $node = $vars['node'];
    $vars['theme_hook_suggestions'][] = 'node__reference__' . $node->type;
  }
}