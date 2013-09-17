class virtualbox(
  $packages           = params_lookup( 'packages' ),
  $enabled            = params_lookup( 'enabled' ),
  $repository_release = params_lookup( 'repository_release' ),
  ) inherits virtualbox::params {

  $ensure = $enabled ? {
    true => present,
    false => absent
  }

  include virtualbox::package, virtualbox::config
}
