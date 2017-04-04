# Class:tree::install
#
#
class tree::install {
    # resources

$pack_name = $facts['os']['family'] ? {
    'RedHat' => 'tree',
    'Debian' => 'tree',
}
  package { $pack_name:
      ensure => installed,
      
  }  
}