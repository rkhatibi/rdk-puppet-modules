class cphalo::params {

# (Modify only to adapt to unsupported OSes)
  $packagename = $::osfamily ? {
    default => 'cphalo',
  }

  $servicename = $::osfamily ? {
    default => 'cphalod',
  }

  $processname = $::osfamily ? {
    default => 'cphalo',
  }

  $hasstatus = $::osfamily ? {
    /(?i:debian)/ => false,
    /(?i:redhat)/ => true,
  }

  $configfile = $::osfamily ? {
    default => '/etc/cphalo/cphalo.conf',
  }

  $configdir = $::osfamily ? {
    default => '/etc/cphalo',
  }

}
