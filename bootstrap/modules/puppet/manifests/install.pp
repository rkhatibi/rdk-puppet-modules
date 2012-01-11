class puppet::install {

  package { 'puppet':
    ensure => latest,
    name   => $puppet::params::packagename,
  }

  package { 'facter':
    ensure => latest,
  }

}
