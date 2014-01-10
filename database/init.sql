# We include default installations of Drupal with this Vagrant setup.
# In order for that to respond properly, default databases should be
# available for use.
CREATE DATABASE IF NOT EXISTS `drupal_default`;
GRANT ALL PRIVILEGES ON `drupal_default`.* TO 'drupal'@'localhost' IDENTIFIED BY 'drupal';

# Create an external user with privileges on all databases in mysql so
# that a connection can be made from the local machine without an SSH tunnel
GRANT ALL PRIVILEGES ON *.* TO 'external'@'%' IDENTIFIED BY 'external';
