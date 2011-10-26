class mysql::params  {

## MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

  $packagename = $operatingsystem ? {
    default => 'mysql-server',
  }

  $servicename = $operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'mysqld',
    /(?i:Ubuntu|Debian)/ => 'mysql',
  }

  $processname = $operatingsystem ? {
    default => 'mysqld',
  }

  $hasstatus = $operatingsystem ? {
    default => true,
  }

  $configfile = $operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => '/etc/mysql/my.cnf',
    /(?i:CentOS|Fedora)/ => '/etc/my.cnf',
  }

  $configdir = $operatingsystem ? {
    default => '/etc/mysql/conf.d',
  }

  $initconfigfile = $operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => '/etc/default/mysql',
    /(?i:CentOS|Fedora)/ => '/etc/sysconfig/mysqld',
  }

}
