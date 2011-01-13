<?php
// $Id: standard.profile,v 1.2 2010/07/22 16:16:42 dries Exp $

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function austrofeedr_form_install_configure_form_alter(&$form, $form_state) {
  // Pre-populate the site name with the server name.
  $form['site_information']['site_name']['#default_value'] = t('eq-austrofeedr');
}

/*
 * The following taxonomy csv import tasks originate from recruiter profile.
 */

/**
 * Implements of hook_install_tasks().
 */
function austrofeedr_install_tasks() {
  $tasks = array(
    'austrofeedr_import_vocabularies_batch' => array(
      'display_name' => st('Import terms'),
      'display' => TRUE,
      'type' => 'batch',
      'run' => INSTALL_TASK_RUN_IF_NOT_COMPLETED,
    ),
  );
  return $tasks;
}

/**
 * Defines batch op for importing
 */
function austrofeedr_import_vocabularies_batch() {
  $batch = array(
    'operations' => array(
      array('austrofeedr_import_vocabularies', array()),
    ),
    'finished' => 'austrofeedr_import_vocabularies_finished',
    'title' => t('Import terms'),
    'init_message' => t('Starting import.'),
    'progress_message' => t('Processed @current out of @total.'),
    'error_message' => t('Example Batch has encountered an error.'),
  );
  return $batch;
}

/**
 * Import batch operation for vocs
 */
function austrofeedr_import_vocabularies(&$context) {
  if (!isset($context['sandbox']['progress'])) {
    $vocs = taxonomy_vocabulary_load_multiple(FALSE);
    $context['sandbox']['progress'] = 0;
    $context['sandbox']['current_node'] = 0;
    $context['sandbox']['max'] = count($vocs);
    $context['sandbox']['vocs'] = $vocs;
  }

  $voc = array_pop($context['sandbox']['vocs']);
  austrofeedr_import_vocabulary($voc, $context);
  $context['sandbox']['progress']++;

  if ($context['sandbox']['progress'] != $context['sandbox']['max']) {
    $context['finished'] = $context['sandbox']['progress'] / $context['sandbox']['max'];
  }
}

/**
 * Imports terms into a vocabulary using taxonomy csv
 */
function austrofeedr_import_vocabulary($voc, &$context) {
  // @todo drupal_get_path('profile', 'austrofeedr') didn't work here,
  // therefore path hardcoded.
  $import_dir = "profiles/austrofeedr/taxonomy_import/";

  // Use Taxonomy CSV to import terms from a file.
  $module_dir = drupal_get_path('module', "taxonomy_csv");
  require_once("$module_dir/import/taxonomy_csv.import.api.inc");

  // Import terms for each voc, where a .csv file exits.
  $filename = $import_dir . $voc->machine_name . '.csv';
  if (!file_exists($filename)) {
    return;
  }

  // Set options for import.
  $options['import_format'] = TAXONOMY_CSV_FORMAT_PARENTS;
  $options['enclosure'] = '"';
  $options['vocabulary_target'] = 'existing';
  $options['vocabulary_id'] = $voc->vid;
  $options['check_hierarchy'] = FALSE;
  $options['set_hierarchy'] = 1;
  $options['existing_items'] = TAXONOMY_CSV_EXISTING_UPDATE_MERGE;
  $options['url'] = $filename;
  taxonomy_csv_import($options);

  $context['results'][] = t('Imported terms for vocabulary @voc_name', array('@voc_name' => $voc->name));
}

/**
 * Prints message after batch is finished
 */
function austrofeedr_import_vocabularies_finished($success, $results, $operations) {
  $message = "";
  if ($success) {
    $message .= theme('item_list', array('items' => $results));
  }
  $message .= t("Import finished");
  drupal_set_message($message);
}