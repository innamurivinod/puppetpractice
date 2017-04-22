# Class: openmrs::
#
#
class openmrs::tomcat ($pack_name = 'tomcat7',$add_pack = {'tomcat7-docs', 'tomcat7-admin', 'tomcat7-examples'} ){
    exec { 'apt-update':
        command => "/usr/bin/apt-get update",
        
    }
   package { $pack_name:
       ensure => installed,
       
   }
   service { $pack_name:
       ensure     => running,
       enable     => true,
       hasrestart => true,
       hasstatus  => true,
       # pattern    => $pack_name,
   }
package { $add_pack:
    ensure => installed,
    
}
}
