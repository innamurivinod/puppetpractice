# Class: mysql::install
#
#
class mysql::install {
 
$pack_name = $facts['os']['family'] ? {
    'RedHat' => 'mysql',
    'Debian' => 'mysql-server-5.6',
}
package { $pack_name:
    ensure => installed,
    
}
}