# Class: openmrs::mysql_install
#
#
class openmrs::mysql_install {
    # resources
    package { 'mysql-server-5.6':
        ensure => installed,
        
    }
}