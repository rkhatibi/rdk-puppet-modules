class apache::install {

  package { 'apache':
    ensure => present,
    name   => $apache::params::packagename,
  }
  case $::operatingsystem {
    Ubuntu: {
      package { 'apache2-mpm-worker':
        ensure => present,
        require => Package['apache'],
      }
      package { 'apache2-threaded-dev':
        ensure => present,
        require => Package['apache'],
      }
      package { 'libaprutil1-dev':
        ensure => present,
        require => Package['apache'],
      }
      package { 'mod_gnutls':
        ensure => present,
        name => 'libapache2-mod-gnutls',
        require => Package['apache'],
      }
    }
    CentOS: {
      package { "apr-devel.$::architecture":
        ensure  => present,
        require => Package['apache'],
      }
      package { "apr-util-devel.$::architecture":
        ensure  => present,
        require => Package['apache'],
      }
      package { "httpd-devel.$::architecture":
        ensure  => present,
        require => Package['apache'],
      }
    }
    Fedora: {
      package { "apr-devel.$::architecture":
        ensure  => present,
        require => Package['apache'],
      }
      package { "apr-util-devel.$::architecture":
        ensure  => present,
        require => Package['apache'],
      }
      package { "httpd-devel.$::architecture":
        ensure  => present,
        require => Package['apache'],
      }
      package { 'mod_gnutls':
        ensure  => present,
        name    => "mod_gnutls.$::architecture",
        require => Package['apache'],
      }
    }
    default: {}
  }

}
