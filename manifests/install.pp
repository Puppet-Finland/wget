# == Class: wget::install
#
# This class installs wget
#
class wget::install
(
    $ensure

) inherits wget::params
{
    package { $::wget::params::package_name:
        ensure => $ensure,
    }
}
