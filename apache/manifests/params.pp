class apache::params  {

# EXTRA VARIABLES
    $vhostdir = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/etc/apache2/sites-enabled',
        /(?i:CentOS|Fedora)/ => '/etc/httpd/vhost.d',
    }

# MODULES INTERNAL VARIABLES
# (Modify only to adapt to unsupported OSes)
    $packagename = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'apache2',
        /(?i:CentOS|Fedora)/ => 'httpd',
    }

    $servicename = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'apache2',
        /(?i:CentOS|Fedora)/ => 'httpd',
    }

    $servicepattern = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/usr/sbin/apache2',
        /(?i:CentOS|Fedora)/ => '/usr/sbin/httpd',
    }

    $processname = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'apache2',
        /(?i:CentOS|Fedora)/ => 'httpd',
    }

    $hasstatus = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'false',
        /(?i:CentOS|Fedora)/ => 'true',
    }

    $username = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'www-data',
        /(?i:CentOS|Fedora)/ => 'apache',
    }

    $basedir = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/etc/apache2',
        /(?i:CentOS|Fedora)/ => '/etc/httpd',
    }

    $configfile = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/etc/apache2/apache2.conf',
        /(?i:CentOS|Fedora)/ => '/etc/httpd/conf/httpd.conf',
    }

    $configfile_mode = $::operatingsystem ? {
        default => '0644',
    }

    $configfile_owner = $::operatingsystem ? {
        default => 'root',
    }

    $configfile_group = $::operatingsystem ? {
        default => 'root',
    }

    $configdir = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/etc/apache2/mods-available',
        /(?i:CentOS|Fedora)/ => '/etc/httpd/conf.d',
    }

    $initconfigfile = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/etc/default/apache2',
        /(?i:CentOS|Fedora)/ => '/etc/sysconfig/httpd',
    }

    $logdir = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/var/log/apache2',
        /(?i:CentOS|Fedora)/ => '/var/log/httpd',
    }

    $vhostdir = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/etc/apache2/sites-enabled',
        /(?i:CentOS|Fedora)/ => '/etc/httpd/vhost.d',
    }

}
