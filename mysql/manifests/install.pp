class mysql::install {

  package { 'mysql':
    ensure => present,
    name   => "${mysql::params::packagename}",
  }

  realize Package['maatkit','innotop','mysql-client']

}
