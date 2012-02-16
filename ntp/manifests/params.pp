class ntp::params {

## MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

  $packagename = $::operatingsystem ? {
    default => 'ntp',
  }

  $servicename = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => 'ntp',
    /(?i:CentOS|Fedora)/ => 'ntpd',
  }

  $processname = $::operatingsystem ? {
    default => 'ntpd',
  }

  $hasstatus = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'true',
    /(?i:Ubuntu|Debian)/ => 'false',
  }

  $config_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc/ntp',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/ntp.conf',
  }

  $config_init = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => '/etc/sysconfig/ntpd',
    /(?i:Ubuntu|Debian)/ => '/etc/default/ntp',
  }

}
