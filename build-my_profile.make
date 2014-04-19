api = 2
core = 7.x

; Download Drupal core.
includes[] = "https://raw.github.com/amcgowanca/drupal_installkit/7.x-1.x/drupal-org-core.make"

; Download InstallKit.
projects[installkit][type] = "profile"
projects[installkit][download][type] = "git"
projects[installkit][download][url] = "https://github.com/amcgowanca/drupal_installkit.git"
projects[installkit][download][branch] = "7.x-1.x"

; Download My Profile (example distribution using InstallKit).
projects[my_profile][type] = "profile"
projects[my_profile][download][type] = "git"
projects[my_profile][download][url] = "https://github.com/amcgowanca/drupal_installkit-my_profile.git"
projects[my_profile][download][branch] = "7.x-1.x"
