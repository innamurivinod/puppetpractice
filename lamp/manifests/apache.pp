# Class:lamp::
#
#
class lamp::apache ($pack_apache = "httpd", $pack_php = "php" ) {
  #install apache2 package
  $location /var/www/html/info.php
  exec {'apt-update':
      command => "/usr/bin/apt-get update",
      
  } 
  package { $pack_apache:
      require => Exec['apt-update'],
      ensure => installed,
      
  }
  service { $pack_apache:
      ensure     => running,
      enable     => true,
      hasrestart => true,
      hasstatus  => true,
      # pattern    => "apache2",
  }
   
  package { $pack_php:
      require => Exec['apt-update'],
      ensure => installed,
      
  }    
  #ensure info.php file path
  file { $location 
           ensure => file,
            content => '<?php
phpinfo();
?>',    # phpinfo code
                require => Package[$pack_apache],    #require 'apache2' package before creating
            }
}
