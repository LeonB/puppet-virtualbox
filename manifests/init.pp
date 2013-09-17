class virtualbox(
	$package_name       = params_lookup( 'package_name' ),
	$enabled            = params_lookup( 'enabled' ),
	$repository_release = params_lookup( 'repository_release' ),
  ) inherits virtualbox::params {

  	$ensure = $enabled ? {
  		true => present,
  		false => absent
  	}

	include virtualbox::package, virtualbox::config
}
