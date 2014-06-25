<?php
/**
 * @file
 * Contains MyProfileInstallTaskInstallDefaults.
 */

require_once INSTALLKIT_ROOT_PATH . '/includes/InstallKitInstallDefaultsInstallTask.inc';

/**
 * Class MyProfileInstallTaskInstallDefaults.
 */
class MyProfileInstallTaskInstallDefaults extends InstallKitInstallDefaultsInstallTask {
  /**
   * {@inheritdoc}
   */
  public function execute() {
    // Execute the operations performed in InstallKitInstallDefaultsInstallTask's
    // implementation of the execute() method (e.g. setting the default theme).
    parent::execute();
    // We will go ahead and create a demo user as an example.
    $account = array(
      'name' => 'hello',
      'pass' => 'world',
      'mail' => 'hello@world.com',
      'status' => 1,
      'roles' => array(DRUPAL_AUTHENTICATED_RID),
    );
    user_save(NULL, $account, 'account');
  }
}
