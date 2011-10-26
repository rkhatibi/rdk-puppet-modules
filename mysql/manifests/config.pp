class mysql::config {

  File {
    owner => root,
    group => root,
    mode  => '0644',
  }

  file { 'my.cnf':
    ensure  => present,
    path    => $mysql::params::configfile,
    source  => 'puppet:///modules/mysql/my.cnf',
  }

  file { '/etc/mysql/conf.d':
    ensure => directory,
  }

  file { 'general_mysql.cnf':
    ensure  => present,
    path    => "${mysql::params::configdir}/general_mysql.cnf",
    require => File['/etc/mysql/conf.d'],
    content => template('mysql/general_mysql.cnf.erb'),
  }

  file { 'innodb_mysql.cnf':
    ensure  => present,
    path    => "${mysql::params::configdir}/innodb_mysql.cnf",
    require => File['/etc/mysql/conf.d'],
    content => template('mysql/innodb_mysql.cnf.erb'),
  }

  file { 'logging_mysql.cnf':
    ensure  => present,
    path    => "${mysql::params::configdir}/logging_mysql.cnf",
    require => File['/etc/mysql/conf.d'],
    content => template('mysql/logging_mysql.cnf.erb'),
  }

  file { 'repl_mysql.cnf':
    ensure  => present,
    path    => "${mysql::params::configdir}/replication_mysql.cnf",
    require => File['/etc/mysql/conf.d'],
    content => template('mysql/repl_mysql.cnf.erb'),
  }

}
