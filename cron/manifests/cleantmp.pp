define cron::cleantmp ($cron_user) {

  cron { "cleantmp":
    command => 'find /var/tmp/ -mmin +30 -type f -print | xargs rm',
    minute  => [10, 40],
    user    => "${cron_user}",
    require => Class["cron::service"],
  }

}
