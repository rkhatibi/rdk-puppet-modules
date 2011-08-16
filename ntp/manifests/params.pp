class ntp::params {

## MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

  $packagename = $operatingsystem ? {
    default => "ntp",
  }

  $servicename = $operatingsystem ? {
    centos  => "ntpd",
    fedora  => "ntpd",
    default => "ntp",
  }

  $processname = $operatingsystem ? {
    default => "ntpd",
  }

  $hasstatus = $operatingsystem ? {
    default => true,
  }

  $configfile_mode = $operatingsystem ? {
    default => "644",
  }

  $configfile_owner = $operatingsystem ? {
    default => "root",
  }

  $configfile_group = $operatingsystem ? {
    default => "root",
  }

  $configdir = $operatingsystem ? {
    default => "/etc/ntp",
  }

  $configfile = $operatingsystem ? {
    default => "/etc/ntp.conf",
  }

  $sysconfigfile = $operatingsystem ? {
    centos  => "/etc/sysconfig/ntpd",
    fedora  => "/etc/sysconfig/ntpd",
    default => "/etc/default/ntp",
  }

}
