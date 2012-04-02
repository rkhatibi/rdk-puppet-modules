class dhclient::params {

## MODULE INTERNAL VARIABLES
# (Modify to adapt to unsupported OSes)

  $packagename = $::operatingsystem ? {
    /(?i:CentOS)/ => 'dhclient',
    /(?i:Fedora)/ => 'dhclient',
    /(?i:Ubuntu)/ => $::lsbmajdistrelease ? {
      10      => 'dhcp-client',
      default => 'isc-dhcp-client',
    }
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

  $config_file = $::operatingsystem ? {
    /(?i:CentOS)/ => '/etc/dhclient.conf',
    /(?i:Fedora)/ => '/etc/dhcp/dhclient.d/dhclient.conf',
    /(?i:Ubuntu)/ => $::lsbmajdistrelease ? {
      10      => '/etc/dhcp3/dhclient.conf',
      default => '/etc/dhcp/dhclient.conf',
    }
  }

}
