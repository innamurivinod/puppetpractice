# Class: tomcat::uninstall

#
class tomcat::uninstall {
 
    # resource
    $pack_name = $facts['os']['family'] ? {
    'RedHat' => 'tomcat',
    'Debian' => 'tomcat7',
}
   package { $pack_name:
       ensure => purged,
       
   }
}