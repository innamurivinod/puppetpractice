
# Class:tomcat::install
#
#
class tomcat::install {
    # resources
$pack_name = $facts['os']['family'] ? {
    'RedHat' => 'tomcat',
    'Debian' => 'tomcat7',
}

package { $pack_name:
    ensure => installed,
    
}
}

