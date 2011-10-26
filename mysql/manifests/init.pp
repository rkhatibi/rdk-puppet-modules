class mysql {

  $max_connections = extlookup('max_connections')
  $innodb_buffer_pool_size = extlookup('innodb_buffer_pool_size')

  include mysql::params, mysql::install, mysql::config, mysql::service
  Class['mysql::install'] -> Class['mysql::config'] ~> Class['mysql::service']

# Additional classes for data collection and monitoring
# include collectd::mysql

}
