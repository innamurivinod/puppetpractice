# Class: 
#
#
class apache::uninstall inherits apache::params {
    # resourcapache::uninstall
   # $pack_name = $facts['os']['family'] ? {
    #'RedHat' => 'httpd',
    #'Debian' => 'apache2',
}
  package { $pack_name:
      ensure => purged,
      
  }
}