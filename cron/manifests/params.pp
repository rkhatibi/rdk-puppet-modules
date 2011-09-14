class cron::params {

## DEFAULTS FOR VARIABLES USERS CAN SET

## MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

  $hasstatus = $::operatingsystem ? {
    default => 'true',
  }

  $packagename = $::operatingsystem ? {
    Centos  => 'vixie-cron',
    Fedora  => 'cronie',
    default => 'cron',
  }

  $processname = $::operatingsystem ? {
    Centos  => 'crond',
    Fedora  => 'crond',
    default => 'cron',
  }

  $servicename = $::operatingsystem ? {
    Centos  => 'crond',
    Fedora  => 'crond',
    default => 'cron',
  }

}
