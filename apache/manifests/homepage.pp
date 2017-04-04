# Class: apache::homepage
#
#
class apache::homepage {
 
 file { '/var/www/index.html':
     ensure => files,
     content => file('apache/index.html')
     #source => 'puppet:///modules/class/file.txt';
 }
 $pack_name = $facts['os']['family'] ? {
    'RedHat' => 'httpd'
    'Debian' => 'apache2'
}
service { "test":
    name => $pack_name
    restart => ,
}
}