class apt::install {

  package { 'apt': ensure => present, }
  package { 'apt-utils': ensure => present, }
  package { 'aptitude': ensure => present, }

}
