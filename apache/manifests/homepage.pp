# Class: apache::homepage
#
#
class apache::homepage inherits apache::params {
 
 file { '/var/www/index.html':
     ensure => files,
     content => file('apache/index.html')
     notify => Service["${apache::params::pack_name}"]
     #source => 'puppet:///modules/class/file.txt';
 }
 #$pack_name = $facts['os']['family'] ? {
  #  'RedHat' => 'httpd',
   # 'Debian' => 'apache2',

}