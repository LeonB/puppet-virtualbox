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

  $packages = $::operatingsystem ? {
    default => [
      'virtualbox', 
      'virtualbox-dkms',
      'virtualbox-qt',
      'virtualbox-dkms'
    ]
  }

  $repository_release = $lsbdistcodename

  $enabled = true

}
