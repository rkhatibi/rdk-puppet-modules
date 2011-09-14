class cron::install {

  package { 'cron':
      name   => "${cron::params::packagename}",
      ensure => present,
  }

}
