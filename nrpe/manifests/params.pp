class nrpe::params  {

## MODULE EXTRA VARIABLES
  $pluginsdir = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => '/usr/lib64/nagios/plugins',
    /(?i:Ubuntu|Debian)/ => '/usr/lib/nagios/plugins',
  }

  $user = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'nrpe',
    /(?i:Ubuntu|Debian)/ => 'nagios',
  }

## MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

  $packagename = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'nrpe',
    /(?i:Ubuntu|Debian)/ => 'nagios-nrpe-server',
  }

  $servicename = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'nrpe',
    /(?i:Ubuntu|Debian)/ => 'nagios-nrpe-server',
  }

  $processname = $::operatingsystem ? {
    default => 'nrpe',
  }

  $hasstatus = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => true,
    /(?i:Ubuntu|Debian)/ => false,
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/nagios/nrpe.cfg',
  }

  $config_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_group = $::operatingsystem ? {
    default => 'root',
  }

  $config_dir = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => '/etc/nrpe.d',
    /(?i:Ubuntu|Debian)/ => '/etc/nagios/nrpe.d',
  }

  $initconfigfile = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => '/etc/sysconfig/nrpe',
    /(?i:Ubuntu|Debian)/ => '/etc/default/nagios-nrpe-server',
  }

}
