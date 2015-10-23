# == Class: wget
#
# This class sets up wget
#
# Currently functionality is limited to installing or removing the package.
#
# == Parameters
#
# [*manage*]
#   Whether to manage wget using Puppet. Valid values are true (default) 
#   and false.
# [*ensure*]
#   Status of wget. Valid values are 'present' (default) and 'absent'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class wget
(
    $manage = true,
    $ensure = 'present'

) inherits wget::params
{

validate_bool($manage)
validate_re($ensure, '^(present|absent)$')

if $manage {
    class { '::wget::install':
        ensure => $ensure,
    }
}
}
