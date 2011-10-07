class puppet::install {

  package { 'puppet':
    ensure => present,
    name   => $puppet::params::packagename,
  }

  file { 'facter_ec2':
    ensure  => present,
    owner   => root, group => root, mode => '0644',
    path    => $puppet::params::facterec2,
    require => Package['puppet'],
    source  => 'puppet:///modules/puppet/facter_ec2',
  }

}
