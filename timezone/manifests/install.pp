class timezone::install {

  package { 'tzdata':
    ensure => present,
    name   => $timezone::params::packagename,
  }

}
