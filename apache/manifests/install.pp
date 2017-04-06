# Class: apache::install inherits apache::params
#
#
class apache::install inherits apache::params {
    # resources


   package { $apache::params::pack_name:
       ensure => installed,
       
}
}   
