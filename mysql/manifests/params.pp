class mysql::params  {

## MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

    $packagename = $operatingsystem ? {
        default => "mysql-server",
    }

    $servicename = $operatingsystem ? {
        redhat  => "mysqld",
        centos  => "mysqld",
        default => "mysql",
    }

    $processname = $operatingsystem ? {
        default => "mysqld",
    }

    $hasstatus = $operatingsystem ? {
        default => true,
    }

    $configfile = $operatingsystem ? {
        debian  => "/etc/mysql/my.cnf",
        ubuntu  => "/etc/mysql/my.cnf",
        default => "/etc/my.cnf",
    }

    $configdir = $operatingsystem ? {
        default => "/etc/mysql/conf.d",
    }

    $initconfigfile = $operatingsystem ? {
        debian  => "/etc/default/mysql",
        ubuntu  => "/etc/default/mysql",
        default => "/etc/sysconfig/mysqld",
    }
    
}
