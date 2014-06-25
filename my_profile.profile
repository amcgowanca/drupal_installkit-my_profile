<?php
/**
 * @file
 * Drupal requires a .profile for Installation Profiles.
 */

/**
 * Implements hook_installkit_install_profile_tasks_alter().
 */
function my_profile_installkit_install_profile_tasks_alter(&$tasks) {
  if (isset($tasks['default_tasks'])) {
    // Override the defaults install task implementation with ours.
    $tasks['default_tasks']['callback arguments']['task info'] = array(
      'class name' => 'MyProfileInstallTaskInstallDefaults',
      'file' => 'MyProfileInstallTaskInstallDefaults.inc',
      'file path' => __DIR__ . '/includes',
    );
  }
}
