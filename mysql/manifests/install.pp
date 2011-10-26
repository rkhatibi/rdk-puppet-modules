class mysql::install {

  package { 'mysql':
    ensure => present,
    name   => $mysql::params::packagename,
  }

# Add helper packages from vpackages class
# realize Package['maatkit','innotop','mysql-client']

}
