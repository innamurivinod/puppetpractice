# Class: lamp::mysql
#
#
class lamp::mysql {
   
     package { 'mysql-server-5.6':
         ensure => installed,
         
     }
}
