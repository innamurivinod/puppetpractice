# Class: openmrs::params
#
#
class openmrs::params {
 
 $pack_name = $facts['os']['family'] ? {
     'Debian' => ['tomcat7','tomcat7-admin','tomcat7-docs','tomcat7-examples']
  
     'RedHat' => 'tomcat',
 }
 { 'java' :
  package => 'java-1.8.0-openjdk-devel',
}

}