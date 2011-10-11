class puppet::config {

  File { owner => root, group => root, mode  => 0644, }

  file { 'sysconfig/puppet':
    ensure  => present,
    path    => $puppet::params::sysconfig,
    content => template('puppet/puppet.erb'),
  }

  file { 'puppet.conf':
    ensure  => present,
    path    => $puppet::params::configfile,
    content => template('puppet/puppet.conf.erb'),
  }

  case $::facterversion {
    /1.5(.*)/: {
      file { 'facter_ec2':
        ensure  => present,
        path    => $puppet::params::facterec2,
        source  => 'puppet:///modules/puppet/facter_ec2',
      }
    }
    default: {}
  }

}
