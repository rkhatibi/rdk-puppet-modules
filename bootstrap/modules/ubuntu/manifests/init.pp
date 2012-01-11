class ubuntu {

  class { 'apt': stage => 'pre', }
  include puppet
  include update 

  Class['update'] -> Class['puppet']

  package { 'rubygems1.8': ensure => present; }

}
