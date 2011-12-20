class glusterfsd::params  {

# MODULES INTERNAL VARIABLES
# (Modify only to adapt to unsupported OSes)
    $packagename = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'glusterfs-server',
    }

    $servicename = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'glusterfs-server',
    }

    $servicepattern = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'glusterfsd',
    }

    $processname = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => '/usr/sbin/glusterfsd',
    }

    $hasstatus = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'false',
    }

    $configfile = $::operatingsystem ? {
        /(?i:Ubuntu|Debian)/ => 'glusterfsd.vol',
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
        /(?i:Ubuntu|Debian)/ => '/etc/glusterfs',
    }

}
