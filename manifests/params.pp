#
# == Class: wget::params
#
# Defines some variables based on the operating system
#
class wget::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'wget'
        }
        'Debian': {
            $package_name = 'wget'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
