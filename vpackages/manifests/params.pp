class vpackages::params {

  $whois = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => 'whois',
    /(?i:CentOS|Fedora)/ => 'jwhois',
  }

  $mysqlclient = $::operatingsystem ? {
    /(?i:Ubuntu|Debian)/ => 'mysql-client',
    /(?i:CentOS|Fedora)/ => 'mysql',
  }

}
