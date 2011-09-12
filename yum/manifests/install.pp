class yum::install {

  package { 'yum': ensure => present, }
  package { 'yum-utils': ensure => present, }

  case $operatingsystem {
      "Fedora": {
        package { 'yum-plugin-changelog': ensure => present, require => Package["yum"], }
        package { 'yum-plugin-priorities': ensure => present, require => Package["yum"], }
        package { 'yum-plugin-protectbase': ensure => present, require => Package["yum"], }
      }
      "CentOS": {
        case $lsbmajdistrelease {
          "6": {
            package { 'yum-plugin-changelog': ensure => present, require => Package["yum"], }
            package { 'yum-plugin-priorities': ensure => present, require => Package["yum"], }
            package { 'yum-plugin-protectbase': ensure => present, require => Package["yum"], }
          }
          "5": {
            package { 'yum-changelog': ensure => present, require => Package["yum"], }
            package { 'yum-priorities': ensure => present, require => Package["yum"], }
            package { 'yum-protectbase': ensure => present, require => Package["yum"], }
          }
        }
      }
  }

}
