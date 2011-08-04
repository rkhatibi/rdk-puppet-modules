class apt::install {

  include apt::params

  package { "apt": ensure => present, }
  package { "apt-utils": ensure => present, }
  package { "aptitude": ensure => present, }

}
