class ruby::params {

  $packagename = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'ruby',
    /(?i:Ubuntu|Debian)/ => 'ruby',
  }

  $rubyrake = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'rubygem-rake',
    /(?i:Ubuntu|Debian)/ => 'rake',
  }

  $rubygem = $::operatingsystem ? {
    /(?i:CentOS|Fedora)/ => 'rubygems',
    /(?i:Ubuntu|Debian)/ => 'rubygems1.8',
  }

}
