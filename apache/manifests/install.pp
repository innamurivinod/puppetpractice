# Class: apache::install inherits apache::params
#
#
class apache::install inherits apache::params {
    # resources


   package { $pack_name:
       ensure => installed,
       
}
}   
