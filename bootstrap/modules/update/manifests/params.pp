class update::params {

  $command = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'yum update -y',
    /(?i:Ubuntu|Debian)/ => 'aptitude full-upgrade -y',
  }

}
