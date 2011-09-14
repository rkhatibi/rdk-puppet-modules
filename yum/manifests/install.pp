class yum::install {

  package { 'yum': ensure => present, }
  package { 'yum-utils': ensure => present, }

  case $::operatingsystem {
    Fedora: {
      package { 'yum-plugin-changelog': ensure => present }
      package { 'yum-plugin-priorities': ensure => present }
      package { 'yum-plugin-protectbase': ensure => present }
    }
    CentOS: {
      case $::lsbmajdistrelease {
        6: {
          package { 'yum-plugin-changelog': ensure => present }
          package { 'yum-plugin-priorities': ensure => present }
          package { 'yum-plugin-protectbase': ensure => present }
        }
        default: {
          package { 'yum-changelog': ensure => present }
          package { 'yum-priorities': ensure => present }
          package { 'yum-protectbase': ensure => present }
        }
      }
    }
    default: {}
  }

}
