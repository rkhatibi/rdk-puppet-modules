class puppet {

  class { 'apt::puppetlabs': stage => 'pre' }

  include puppet::params, puppet::install, puppet::config, puppet::service
  Class['puppet::install'] -> Class['puppet::config'] -> Class['puppet::service']

}
