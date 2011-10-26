class ruby::install {

  package { 'ruby':
    ensure => present,
    name   => $ruby::params::packagename,
  }

  package { 'ruby-gems':
    ensure => present,
    name   => $ruby::params::rubygem,
  }

  package { 'ruby-rake':
    ensure => present,
    name   => $ruby::params::rubyrake,
  }

}
