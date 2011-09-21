class syslog::params  {

## EXTRA MODULE INTERNAL VARIABLES
#(add here module specific internal variables)

## MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

  $packagename = $::operatingsystem ? {
    default => 'rsyslog',
  }

  $servicename = $::operatingsystem ? {
    default => 'rsyslog',
  }

  $processname = $::operatingsystem ? {
    default => 'rsyslogd',
  }

  $hasstatus = $::operatingsystem ? {
    default => true,
  }

  $configfile_mode = $::operatingsystem ? {
    default => '0644',
  }

  $configfile_owner = $::operatingsystem ? {
    default => root,
  }

  $configfile_group = $::operatingsystem ? {
    default => root,
  }

  $configdir = $::operatingsystem ? {
    default => '/etc/rsyslog.d',
  }

}
