class virtualbox::package {

  package  { $virtualbox::package_name:
    ensure  => $virtualbox::ensure,
    # require => Apt::Source['virtualbox']
  }

  # The Ubuntu partner APT source
  # apt::source { 'virtualbox':
    # ensure      => present,
    # location    => 'http://download.virtualbox.org/virtualbox/debian',
    # release     => $virtualbox::repository_release,
    # repos       => 'contrib',
    # include_src => false,
    # key         => '54422A4B98AB5139'
  # }

}
