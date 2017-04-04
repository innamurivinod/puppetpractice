# Class: tree::uninstall
#
#
class tree::service {
 
    $pack_name = $facts['os']['family'] ? {
    'RedHat' => 'tree',
    'Debian' => 'tree',
}
   service { $pack_name:
       ensure     => running,
       enable     => true,
       hasrestart => true,
       hasstatus  => true,
       # pattern    => $pack_name,
   }
}