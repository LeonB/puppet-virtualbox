# Class: virtualbox::params
#
# This class defines default parameters used by the main module class virtualbox
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to virtualbox class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class virtualbox::params {

	### Application related parameters

	$package_name = $::operatingsystem ? {
		default => 'virtualbox'
	}

	$repository_release = $lsbdistcodename

	$enabled = true

}
