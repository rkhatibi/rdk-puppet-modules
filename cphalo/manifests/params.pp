class cphalo::params {

# (Modify only to adapt to unsupported OSes)
  $packagename = $::operatingsystem ? {
    default => 'cphalo',
  }

  $servicename = $::operatingsystem ? {
    default => 'cphalod',
  }

  $processname = $::operatingsystem ? {
    default => 'cphalo',
  }

  $hasstatus = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => false,
    /(?i:Fedora|CentOS)/ => true,
  }

  $configfile = $::operatingsystem ? {
    default => '/etc/cphalo/cphalo.conf',
  }

  $configdir = $::operatingsystem ? {
    default => '/etc/cphalo',
  }

}
