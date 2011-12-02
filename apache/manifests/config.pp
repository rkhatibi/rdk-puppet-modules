class apache::config {

  File {
    owner   => $apache::params::configfile_owner,
    group   => $apache::params::configfile_group,
    mode    => $apache::params::configfile_mode,
  }

  file { 'apache-vhost-dir':
    ensure  => directory,
    path    => $apache::params::vhostdir,
    mode    => '0755',
    force   => true,
    purge   => true,
    recurse => true,
  }

  file { 'apache_status.conf':
    ensure  => present,
    path    => "${apache::params::configdir}/status.conf",
    source  => 'puppet:///modules/apache/status.conf',
  }

  case $::operatingsystem {
    CentOS: {
      file { 'apache_vhosts.conf':
        ensure  => present,
        path    => "${apache::params::configdir}/vhosts.conf",
        source  => 'puppet:///modules/apache/vhosts.conf',
      }
      file { '/etc/sysconfig/httpd':
        ensure  => present,
        source  => 'puppet:///modules/apache/httpd.sysconfig',
      }
    }
    Fedora: {
      file { 'apache_vhosts.conf':
        ensure  => present,
        path    => "${apache::params::configdir}/vhosts.conf",
        source  => 'puppet:///modules/apache/vhosts.conf',
      }
      file { 'apache_vhosts_ssl.conf':
        ensure  => present,
        path    => "${apache::params::configdir}/vhosts_ssl.conf",
        source  => 'puppet:///modules/apache/vhosts_ssl.conf',
      }
      file { '/etc/sysconfig/httpd':
        ensure  => present,
        source  => 'puppet:///modules/apache/httpd.sysconfig',
      }
    }
    Ubuntu: {
      file { '/etc/apache2/ports.conf':
        ensure  => present,
        source  => 'puppet:///modules/apache/ports.conf',
      }
    }
    default: {}
  }

}
