# Class: tree::uninstall
#
#
class tree::uninstall {
    # resources
     $pack_name = $facts['os']['family'] ? {
    'RedHat' => 'tree',
    'Debian' => 'tree',
}
package { $pack_name:
    ensure => purged,
    
}
}