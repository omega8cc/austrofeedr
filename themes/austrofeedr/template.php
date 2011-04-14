<?php
// $Id$
/* CUSTOM TODO */

/*

function austrofeedr_menu() {
  $items = array();
  $items[] = array(
    'path' => 'blockupdate/update',
    'callback' => 'block_update',
    'type' => MENU_CALLBACK,
    'access' => TRUE,
  );
  return $items;
}

function block_update() {
  //The get_data() function is generic here
  //Use this function to get the updated data for display
  $html = get_data();
  print drupal_to_js(array('html' => $html));
  // The exit() call is critical!
  exit();
}
*/

function austrofeedr_preprocess_views_view($variables) {
  if($variables['name'] == 'hw_messstellen_map') {
    dpm($variables);

  }
}